﻿//  --------------------------------------------------------------------------------------------------------------------
//  <copyright file="XUnit2SingleResults.cs" company="PicklesDoc">
//  Copyright 2011 Jeffrey Cameron
//  Copyright 2012-present PicklesDoc team and community contributors
//
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.
//  </copyright>
//  --------------------------------------------------------------------------------------------------------------------

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

using PicklesDoc.Pickles.ObjectModel;

namespace PicklesDoc.Pickles.TestFrameworks.XUnit2
{
    public class XUnit2SingleResults : ITestResults
    {
        private readonly assemblies resultsDocument;

        public XUnit2SingleResults(assemblies resultsDocument)
        {
            this.resultsDocument = resultsDocument;
        }

        public bool SupportsExampleResults
        {
            get { return true; }
        }

        internal XUnit2ExampleSignatureBuilder ExampleSignatureBuilder { get; set; }

        public TestResult GetFeatureResult(Feature feature)
        {
            var featureElement = this.GetFeatureElement(feature);
            int passedCount = featureElement.passed;
            int failedCount = featureElement.failed;
            int skippedCount = featureElement.skipped;

            return GetAggregateResult(passedCount, failedCount, skippedCount);
        }

        public TestResult GetScenarioOutlineResult(ScenarioOutline scenarioOutline)
        {
            IEnumerable<assembliesAssemblyCollectionTest> exampleElements = this.GetScenarioOutlineElements(scenarioOutline);
            int passedCount = 0;
            int failedCount = 0;
            int skippedCount = 0;

            foreach (var exampleElement in exampleElements)
            {
                TestResult result = this.GetResultFromElement(exampleElement);
                if (result == TestResult.Inconclusive)
                {
                    skippedCount++;
                }

                if (result == TestResult.Passed)
                {
                    passedCount++;
                }

                if (result == TestResult.Failed)
                {
                    failedCount++;
                }
            }

            return GetAggregateResult(passedCount, failedCount, skippedCount);
        }

        public TestResult GetScenarioResult(Scenario scenario)
        {
            var scenarioElement = this.GetScenarioElement(scenario);
            return scenarioElement != null
                ? this.GetResultFromElement(scenarioElement)
                : TestResult.Inconclusive;
        }

        private assembliesAssemblyCollection GetFeatureElement(Feature feature)
        {
            var query = from collection in this.resultsDocument.assembly.collection
                        from test in collection.test
                        from trait in test.traits
                        where trait.name == "FeatureTitle" && trait.value == feature.Name
                        select collection;

            return query.FirstOrDefault();
        }

        private assembliesAssemblyCollectionTest GetScenarioElement(Scenario scenario)
        {
            var featureElement = this.GetFeatureElement(scenario.Feature);

            var query = from test in featureElement.test
                        from trait in test.traits
                        where trait.name == "Description" && trait.value == scenario.Name
                        select test;

            return query.FirstOrDefault();
        }

        private IEnumerable<assembliesAssemblyCollectionTest> GetScenarioOutlineElements(ScenarioOutline scenario)
        {
            var featureElement = this.GetFeatureElement(scenario.Feature);

            var query =
                from test in featureElement.test
                from trait in test.traits
                where trait.name == "Description" && trait.value == scenario.Name
                select test;

            return query;
        }

        private TestResult GetResultFromElement(assembliesAssemblyCollectionTest element)
        {
            TestResult result;

            switch (element.result.ToLowerInvariant())
            {
                case "pass":
                    result = TestResult.Passed;
                    break;
                case "fail":
                    result = TestResult.Failed;
                    break;
                case "skip":
                default:
                    result = TestResult.Inconclusive;
                    break;
            }

            return result;
        }

        private static TestResult GetAggregateResult(int passedCount, int failedCount, int skippedCount)
        {
            TestResult result;
            if (passedCount > 0 && failedCount == 0)
            {
                result = TestResult.Passed;
            }
            else if (failedCount > 0)
            {
                result = TestResult.Failed;
            }
            else
            {
                result = TestResult.Inconclusive;
            }

            return result;
        }

        public TestResult GetExampleResult(ScenarioOutline scenarioOutline, string[] exampleValues)
        {
            IEnumerable<assembliesAssemblyCollectionTest> exampleElements = this.GetScenarioOutlineElements(scenarioOutline);

            var result = new TestResult();
            var signatureBuilder = this.ExampleSignatureBuilder;

            if (signatureBuilder == null)
            {
                throw new InvalidOperationException("You need to set the ExampleSignatureBuilder before using GetExampleResult.");
            }

            foreach (var exampleElement in exampleElements)
            {
                Regex signature = signatureBuilder.Build(scenarioOutline, exampleValues);
                if (signature.IsMatch(exampleElement.name.ToLowerInvariant().Replace(@"\", string.Empty)))
                {
                    return this.GetResultFromElement(exampleElement);
                }
            }

            return result;
        }
    }
}