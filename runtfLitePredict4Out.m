function [pred1, pred2, pred3, pred4] = runtfLitePredict4Out(inputImg)
%#codegen

% Can use any PreProcessing Needed on Input Image
%   ------

persistent net;
%
if isempty(net)
      net = loadTFLiteModel('detect.tflite');
end


[pred1, pred2, pred3, pred4] = predict(net, inputImg,'EnableINT8InferenceOnWindows',true);

% Can Do PostProcessing If Needed on Output Preds
%   ------

end
