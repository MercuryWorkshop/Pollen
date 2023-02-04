mkdir -p /etc/opt/chrome/policies/managed
echo '{"URLBlocklist": [], "SystemFeaturesDisableList": [], "ChromeOsMultiProfileUserBehavior": "unrestricted", "DeveloperToolsAvailability": 1, "AllowDeletingBrowserHistory": true, "IncognitoModeAvailability": 0, "AllowScreenLock": true}' > /etc/opt/chrome/policies/managed/policy.json
