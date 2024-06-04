crudini --set /opt/neutron/data/config/app.toml oracle enabled true
crudini --set /opt/neutron/data/config/app.toml oracle oracle_address "\"oracle:8080\""
crudini --set /opt/neutron/data/config/app.toml oracle client_timeout "\"500ms\""
crudini --set /opt/neutron/data/config/app.toml oracle metrics_enabled true
crudini --set /opt/neutron/data/config/app.toml telemetry enabled true

crudini --set /opt/neutron/data/config/config.toml instrumentation prometheus true
# crudini --set /opt/neutron/data/config/config.toml instrumentation prometheus_listen_addr "\"tcp://0.0.0.0:26660\""

neutrond_new start --home /opt/neutron/data --x-crisis-skip-assert-invariants --iavl-disable-fastnode false
