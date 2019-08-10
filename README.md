# Mongo Local

Local mongodb server with replica set.

For simple use cases, just use the primary server. Full replication capability requires
clients to know the host names or IP addresses of each replica set servers.

In a Docker environment,
this can be achieved only if the client is inside Docker too. However, if you use this Mongo server
for local development outside Docker, you won't be able to use replication properly.

Since host names inside Docker are different when exposed to the host machine, client
will get confused with the connection. In this case, just use the primary server and don't
specify a replica set.

```text
DATABASE_URL=mongodb://localhost:27017/db_name
```
