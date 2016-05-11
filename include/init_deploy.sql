\echo '*************************************************************************'
\echo '** PROJECT.: ':projectName
\echo '** VERSION.: ':versionDeploy
\echo '*************************************************************************'
\echo ''
SELECT public.fc_deploy(:projectName,:versionDeploy) AS deployid \gset
