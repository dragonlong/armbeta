classdef ObjectHypothesis < robotics.ros.Message
    %ObjectHypothesis MATLAB implementation of pose_estimation/ObjectHypothesis
    %   This class was automatically generated by
    %   robotics.ros.msg.internal.gen.MessageClassGenerator.
    
    %   Copyright 2014-2018 The MathWorks, Inc.
    
    %#ok<*INUSD>
    
    properties (Constant)
        MessageType = 'pose_estimation/ObjectHypothesis' % The ROS message type
    end
    
    properties (Constant, Hidden)
        MD5Checksum = 'ad948bb5ba9d5ef7bf2036ba8adf8f1d' % The MD5 Checksum of the message definition
    end
    
    properties (Access = protected)
        JavaMessage % The Java message object
    end
    
    properties (Constant, Access = protected)
        GeometryMsgsPointClass = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Point') % Dispatch to MATLAB class for message type geometry_msgs/Point
        GeometryMsgsPoseClass = robotics.ros.msg.internal.MessageFactory.getClassForType('geometry_msgs/Pose') % Dispatch to MATLAB class for message type geometry_msgs/Pose
    end
    
    properties (Dependent)
        Label
        Pose
        Pca
        Latent
        Mean
        Score
        RangeX
        RangeY
        RangeZ
    end
    
    properties (Access = protected)
        Cache = struct('Pose', [], 'Pca', [], 'Latent', [], 'Mean', []) % The cache for fast data access
    end
    
    properties (Constant, Hidden)
        PropertyList = {'Label', 'Latent', 'Mean', 'Pca', 'Pose', 'RangeX', 'RangeY', 'RangeZ', 'Score'} % List of non-constant message properties
        ROSPropertyList = {'label', 'latent', 'mean', 'pca', 'pose', 'rangeX', 'rangeY', 'rangeZ', 'score'} % List of non-constant ROS message properties
    end
    
    methods
        function obj = ObjectHypothesis(msg)
            %ObjectHypothesis Construct the message object ObjectHypothesis
            import com.mathworks.toolbox.robotics.ros.message.MessageInfo;
            
            % Support default constructor
            if nargin == 0
                obj.JavaMessage = obj.createNewJavaMessage;
                return;
            end
            
            % Construct appropriate empty array
            if isempty(msg)
                obj = obj.empty(0,1);
                return;
            end
            
            % Make scalar construction fast
            if isscalar(msg)
                % Check for correct input class
                if ~MessageInfo.compareTypes(msg(1), obj.MessageType)
                    error(message('robotics:ros:message:NoTypeMatch', obj.MessageType, ...
                        char(MessageInfo.getType(msg(1))) ));
                end
                obj.JavaMessage = msg(1);
                return;
            end
            
            % Check that this is a vector of scalar messages. Since this
            % is an object array, use arrayfun to verify.
            if ~all(arrayfun(@isscalar, msg))
                error(message('robotics:ros:message:MessageArraySizeError'));
            end
            
            % Check that all messages in the array have the correct type
            if ~all(arrayfun(@(x) MessageInfo.compareTypes(x, obj.MessageType), msg))
                error(message('robotics:ros:message:NoTypeMatchArray', obj.MessageType));
            end
            
            % Construct array of objects if necessary
            objType = class(obj);
            for i = 1:length(msg)
                obj(i,1) = feval(objType, msg(i)); %#ok<AGROW>
            end
        end
        
        function label = get.Label(obj)
            %get.Label Get the value for property Label
            label = char(obj.JavaMessage.getLabel);
        end
        
        function set.Label(obj, label)
            %set.Label Set the value for property Label
            validateattributes(label, {'char'}, {}, 'ObjectHypothesis', 'Label');
            
            obj.JavaMessage.setLabel(label);
        end
        
        function pose = get.Pose(obj)
            %get.Pose Get the value for property Pose
            if isempty(obj.Cache.Pose)
                obj.Cache.Pose = feval(obj.GeometryMsgsPoseClass, obj.JavaMessage.getPose);
            end
            pose = obj.Cache.Pose;
        end
        
        function set.Pose(obj, pose)
            %set.Pose Set the value for property Pose
            validateattributes(pose, {obj.GeometryMsgsPoseClass}, {'nonempty', 'scalar'}, 'ObjectHypothesis', 'Pose');
            
            obj.JavaMessage.setPose(pose.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Pose)
                obj.Cache.Pose.setJavaObject(pose.getJavaObject);
            end
        end
        
        function pca = get.Pca(obj)
            %get.Pca Get the value for property Pca
            if isempty(obj.Cache.Pca)
                obj.Cache.Pca = feval(obj.GeometryMsgsPoseClass, obj.JavaMessage.getPca);
            end
            pca = obj.Cache.Pca;
        end
        
        function set.Pca(obj, pca)
            %set.Pca Set the value for property Pca
            validateattributes(pca, {obj.GeometryMsgsPoseClass}, {'nonempty', 'scalar'}, 'ObjectHypothesis', 'Pca');
            
            obj.JavaMessage.setPca(pca.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Pca)
                obj.Cache.Pca.setJavaObject(pca.getJavaObject);
            end
        end
        
        function latent = get.Latent(obj)
            %get.Latent Get the value for property Latent
            if isempty(obj.Cache.Latent)
                obj.Cache.Latent = feval(obj.GeometryMsgsPointClass, obj.JavaMessage.getLatent);
            end
            latent = obj.Cache.Latent;
        end
        
        function set.Latent(obj, latent)
            %set.Latent Set the value for property Latent
            validateattributes(latent, {obj.GeometryMsgsPointClass}, {'nonempty', 'scalar'}, 'ObjectHypothesis', 'Latent');
            
            obj.JavaMessage.setLatent(latent.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Latent)
                obj.Cache.Latent.setJavaObject(latent.getJavaObject);
            end
        end
        
        function mean = get.Mean(obj)
            %get.Mean Get the value for property Mean
            if isempty(obj.Cache.Mean)
                obj.Cache.Mean = feval(obj.GeometryMsgsPointClass, obj.JavaMessage.getMean);
            end
            mean = obj.Cache.Mean;
        end
        
        function set.Mean(obj, mean)
            %set.Mean Set the value for property Mean
            validateattributes(mean, {obj.GeometryMsgsPointClass}, {'nonempty', 'scalar'}, 'ObjectHypothesis', 'Mean');
            
            obj.JavaMessage.setMean(mean.getJavaObject);
            
            % Update cache if necessary
            if ~isempty(obj.Cache.Mean)
                obj.Cache.Mean.setJavaObject(mean.getJavaObject);
            end
        end
        
        function score = get.Score(obj)
            %get.Score Get the value for property Score
            score = single(obj.JavaMessage.getScore);
        end
        
        function set.Score(obj, score)
            %set.Score Set the value for property Score
            validateattributes(score, {'numeric'}, {'nonempty', 'scalar'}, 'ObjectHypothesis', 'Score');
            
            obj.JavaMessage.setScore(score);
        end
        
        function rangex = get.RangeX(obj)
            %get.RangeX Get the value for property RangeX
            javaArray = obj.JavaMessage.getRangeX;
            array = obj.readJavaArray(javaArray, 'single');
            rangex = single(array);
        end
        
        function set.RangeX(obj, rangex)
            %set.RangeX Set the value for property RangeX
            if ~isvector(rangex) && isempty(rangex)
                % Allow empty [] input
                rangex = single.empty(0,1);
            end
            
            validateattributes(rangex, {'numeric'}, {'vector'}, 'ObjectHypothesis', 'RangeX');
            
            javaArray = obj.JavaMessage.getRangeX;
            array = obj.writeJavaArray(rangex, javaArray, 'single');
            obj.JavaMessage.setRangeX(array);
        end
        
        function rangey = get.RangeY(obj)
            %get.RangeY Get the value for property RangeY
            javaArray = obj.JavaMessage.getRangeY;
            array = obj.readJavaArray(javaArray, 'single');
            rangey = single(array);
        end
        
        function set.RangeY(obj, rangey)
            %set.RangeY Set the value for property RangeY
            if ~isvector(rangey) && isempty(rangey)
                % Allow empty [] input
                rangey = single.empty(0,1);
            end
            
            validateattributes(rangey, {'numeric'}, {'vector'}, 'ObjectHypothesis', 'RangeY');
            
            javaArray = obj.JavaMessage.getRangeY;
            array = obj.writeJavaArray(rangey, javaArray, 'single');
            obj.JavaMessage.setRangeY(array);
        end
        
        function rangez = get.RangeZ(obj)
            %get.RangeZ Get the value for property RangeZ
            javaArray = obj.JavaMessage.getRangeZ;
            array = obj.readJavaArray(javaArray, 'single');
            rangez = single(array);
        end
        
        function set.RangeZ(obj, rangez)
            %set.RangeZ Set the value for property RangeZ
            if ~isvector(rangez) && isempty(rangez)
                % Allow empty [] input
                rangez = single.empty(0,1);
            end
            
            validateattributes(rangez, {'numeric'}, {'vector'}, 'ObjectHypothesis', 'RangeZ');
            
            javaArray = obj.JavaMessage.getRangeZ;
            array = obj.writeJavaArray(rangez, javaArray, 'single');
            obj.JavaMessage.setRangeZ(array);
        end
    end
    
    methods (Access = protected)
        function resetCache(obj)
            %resetCache Resets any cached properties
            obj.Cache.Pose = [];
            obj.Cache.Pca = [];
            obj.Cache.Latent = [];
            obj.Cache.Mean = [];
        end
        
        function cpObj = copyElement(obj)
            %copyElement Implements deep copy behavior for message
            
            % Call default copy method for shallow copy
            cpObj = copyElement@robotics.ros.Message(obj);
            
            % Clear any existing cached properties
            cpObj.resetCache;
            
            % Create a new Java message object
            cpObj.JavaMessage = obj.createNewJavaMessage;
            
            % Iterate over all primitive properties
            cpObj.Label = obj.Label;
            cpObj.Score = obj.Score;
            cpObj.RangeX = obj.RangeX;
            cpObj.RangeY = obj.RangeY;
            cpObj.RangeZ = obj.RangeZ;
            
            % Recursively copy compound properties
            cpObj.Pose = copy(obj.Pose);
            cpObj.Pca = copy(obj.Pca);
            cpObj.Latent = copy(obj.Latent);
            cpObj.Mean = copy(obj.Mean);
        end
        
        function reload(obj, strObj)
            %reload Called by loadobj to assign properties
            obj.Label = strObj.Label;
            obj.Score = strObj.Score;
            obj.RangeX = strObj.RangeX;
            obj.RangeY = strObj.RangeY;
            obj.RangeZ = strObj.RangeZ;
            obj.Pose = feval([obj.GeometryMsgsPoseClass '.loadobj'], strObj.Pose);
            obj.Pca = feval([obj.GeometryMsgsPoseClass '.loadobj'], strObj.Pca);
            obj.Latent = feval([obj.GeometryMsgsPointClass '.loadobj'], strObj.Latent);
            obj.Mean = feval([obj.GeometryMsgsPointClass '.loadobj'], strObj.Mean);
        end
    end
    
    methods (Access = ?robotics.ros.Message)
        function strObj = saveobj(obj)
            %saveobj Implements saving of message to MAT file
            
            % Return an empty element if object array is empty
            if isempty(obj)
                strObj = struct.empty;
                return
            end
            
            strObj.Label = obj.Label;
            strObj.Score = obj.Score;
            strObj.RangeX = obj.RangeX;
            strObj.RangeY = obj.RangeY;
            strObj.RangeZ = obj.RangeZ;
            strObj.Pose = saveobj(obj.Pose);
            strObj.Pca = saveobj(obj.Pca);
            strObj.Latent = saveobj(obj.Latent);
            strObj.Mean = saveobj(obj.Mean);
        end
    end
    
    methods (Static, Access = {?matlab.unittest.TestCase, ?robotics.ros.Message})
        function obj = loadobj(strObj)
            %loadobj Implements loading of message from MAT file
            
            % Return an empty object array if the structure element is not defined
            if isempty(strObj)
                obj = robotics.ros.custom.msggen.pose_estimation.ObjectHypothesis.empty(0,1);
                return
            end
            
            % Create an empty message object
            obj = robotics.ros.custom.msggen.pose_estimation.ObjectHypothesis;
            obj.reload(strObj);
        end
    end
end
