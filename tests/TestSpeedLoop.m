classdef TestSpeedLoop < matlab.unittest.TestCase
    methods (Test)
        function stepResponse_ok(testCase)
            w_ref = 1000; w0 = 0;
            y = bldc.speed_step_response(w_ref, w0);
            testCase.verifyLessThan(abs(y(end) - w_ref), 0.05*w_ref);
        end
    end
end
