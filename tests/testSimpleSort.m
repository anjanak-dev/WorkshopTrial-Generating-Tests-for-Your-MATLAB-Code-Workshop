classdef testSimpleSort < matlab.unittest.TestCase
    
    properties (TestParameter)
        inputValue = struct( ...
            ScalarPositive = 5, ...
            ScalarNegative = -7, ...
            ScalarZero = 0, ...
            VectorLength2 = randi(100,[2,1]), ...
            VectorLength10 = randi(100,[10,1]), ...
            VectorLength100 = randi(100,[100,1]), ...
            Empty = []);
    end

    methods (Test)

        function testSimpleSort_ExampleBasedTest(testCase)
            % This is an example-based test using a hardcoded input and
            % expected output

            % Define inputs
            in = [3,5,2,8,1,2,6];

            % Define expected outputs
            expectedOut = [1,2,2,3,5,6,8];

            % Exercise function
            actualOut = simpleSort(in);

            % Verify results
            testCase.verifyEqual(actualOut,expectedOut);
        end


        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        % Below is a property-based test that is missing the logic to %
        % test the properties of the result. Uncomment and update the %
        % local functions at the bottom of the class to make it pass. %                    %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

        % function testSimpleSort_PropertyBasedTest(testCase, inputValue)
        %     % Create a property-based test for simpleSort
        % 
        %     % Instead of testing specific input and output values like we
        %     % did above, property-based testing checks that the
        %     % "properties" (i.e., the defining characteristics) of the
        %     % result are satisfied.
        % 
        %     % A major benefit of property-based testing is that you don't
        %     % don't need to define any specific expected values. We
        %     % expect that the properties of the solution are true, so the
        %     % exact values are less important (or not important at all).
        % 
        %     % For simpleSort, the properties of the algorithm are:
        %     %   - Output is sorted in ascending order
        %     %   - Output has the same number of elements as the input
        % 
        % 
        %     % Exercise function
        %     result = simpleSort(inputValue);
        % 
        % 
        %     % Check each property of the result
        %     isSortedAscending = checkIsSortedAscending(result);
        %     hasSameNumberOfElements = checkHasSameNumberOfElements(result,inputValue);
        % 
        % 
        %     % Verify properties of actualOutput are satisfied
        %     testCase.verifyTrue(isSortedAscending);
        %     testCase.verifyTrue(hasSameNumberOfElements);
        % end

    end
end

function isSortedAscending = checkIsSortedAscending(result)
% HOMEWORK: Add code to check if result is sorted in ascending order
%           Note: isSortedAscending should be a logical true/false

% ADD CODE HERE


end

function hasSameNumberOfElements = checkHasSameNumberOfElements(result,inputValue)
% HOMEWORK: Add logic to check if result has the same number of elements 
%           as inputValue
%           Note: hasSameNumberOfElements should be a logical true/false

% ADD CODE HERE


end
