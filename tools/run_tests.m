function exitcode = run_tests()
import matlab.unittest.TestRunner
import matlab.unittest.TestSuite
suite = TestSuite.fromFolder("tests","IncludingSubfolders",true);
runner = TestRunner.withTextOutput('Verbosity',3);
results = runner.run(suite);
exitcode = ~all([results.Passed]);
if exitcode ~= 0, error("Some tests failed"); end
end
