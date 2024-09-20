function [mae, mse, rmse, rmsle, r2, adj_r2] = regression_metrics(ypred, yactual)
    
    ypred = ypred(:);
    yactual = yactual(:);
    
    % Number of observations
    n = length(yactual);
    
    % Mean of the actual values
    y_mean = mean(yactual);
    
    % Absolute Mean Error (MAE)
    mae = mean(abs(ypred - yactual));
    
    % Mean Squared Error (MSE)
    mse = mean((ypred - yactual).^2);
    
    % Root Mean Squared Error (RMSE)
    rmse = sqrt(mse);
    
    % Root Mean Log Squared Error (RMSLE)
    rmsle = sqrt(mean((log1p(ypred) - log1p(yactual)).^2));
    
    % R-squared (R2) value
    ss_res = sum((yactual - ypred).^2);
    ss_tot = sum((yactual - y_mean).^2);
    r2 = 1 - (ss_res / ss_tot);
    
    % Adjusted R-squared value
    p = 1; % Number of predictors, adjust as necessary
    adj_r2 = 1 - ((1 - r2) * (n - 1) / (n - p - 1));
end
