PostgreSQL 9.3 with OpenSSH
===========================

Copy your ssh public key to `authorized_keys` file and build a package:

    cp ~/.ssh/id_rsa.pub authorized_keys
    docker build -t postgresql .

`postgres` password is defined from environment variable on container setup:

    docker run -P -e PG_PASSWORD=foobar -d postgresql -name postgresql0


To connect to the server define a list of ports to expose with `docker ps`
and then use following syntax.

SSH:

    ssh root@localhost -p <ssh port>

Database Server:

    psql -h localhost -U postgres -p 49200
