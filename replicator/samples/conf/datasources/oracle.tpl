# Oracle data source.

# The following property overrides default replicator.datasources
replicator.datasources=global,extractor,oracle_cdc

replicator.datasource.global=com.continuent.tungsten.replicator.datasource.SqlDataSource

# Service name of the replicator.
replicator.datasource.global.serviceName=${service.name}

# Connection information for Oracle.  This should be updated to use a class
# that specifically handles Oracle connection parameters such as SID. 
replicator.datasource.global.connectionSpec=com.continuent.tungsten.replicator.datasource.SqlConnectionSpecOracle
replicator.datasource.global.connectionSpec.host=${replicator.global.db.host}
replicator.datasource.global.connectionSpec.port=${replicator.global.db.port}
replicator.datasource.global.connectionSpec.user=${replicator.global.db.user}
replicator.datasource.global.connectionSpec.password=${replicator.global.db.password}
replicator.datasource.global.connectionSpec.schema=${replicator.schema}
replicator.datasource.global.connectionSpec.serviceName=@{APPLIER.REPL_ORACLE_SERVICE}
replicator.datasource.global.connectionSpec.sid=@{APPLIER.REPL_ORACLE_SID}
replicator.datasource.global.connectionSpec.tableType=${replicator.table.engine}

# Oracle data source used for CDC extractor's subscriber user.
replicator.datasource.oracle_cdc=com.continuent.tungsten.replicator.datasource.SqlDataSource
replicator.datasource.oracle_cdc.createCatalog=false

# Service name of the replicator.
replicator.datasource.oracle_cdc.serviceName=${service.name}

replicator.datasource.oracle_cdc.connectionSpec=com.continuent.tungsten.replicator.datasource.SqlConnectionSpecOracle
replicator.datasource.oracle_cdc.connectionSpec.host=${replicator.global.db.host}
replicator.datasource.oracle_cdc.connectionSpec.port=${replicator.global.db.port}
replicator.datasource.oracle_cdc.connectionSpec.user=${replicator.global.db.user}
replicator.datasource.oracle_cdc.connectionSpec.password=${replicator.global.db.password}
replicator.datasource.oracle_cdc.connectionSpec.schema=${replicator.schema}
replicator.datasource.oracle_cdc.connectionSpec.serviceName=@{EXTRACTOR.REPL_ORACLE_SERVICE}
replicator.datasource.oracle_cdc.connectionSpec.sid=@{EXTRACTOR.REPL_ORACLE_SID}

