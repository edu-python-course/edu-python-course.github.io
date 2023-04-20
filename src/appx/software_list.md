Software List
=============

7zip
----

**7-Zip** is **free software** with **open source**.

- High compression ratio in [7z format](https://7-zip.org/7z.html) with
  **LZMA** and **LZMA2** compression
- Supported formats:
    - Packing / unpacking: 7z, XZ, BZIP2, GZIP, TAR, ZIP and WIM
    - Unpacking only: APFS, AR, ARJ, CAB, CHM, CPIO, CramFS, DMG, EXT, FAT,
      GPT, HFS, IHEX, ISO, LZH, LZMA, MBR, MSI, NSIS, NTFS, QCOW2, RAR, RPM,
      SquashFS, UDF, UEFI, VDI, VHD, VHDX, VMDK, XAR and Z.
- Self-extracting capability for 7z format
- Integration with Windows Shell

https://7-zip.org/

cygwin
------

It is a large collection of GNU and Open Source tools which provide
functionality similar to a
[Linux distribution](https://en.wikipedia.org/wiki/Linux_distribution) on
Windows and a DLL (cygwin1.dll) which provides substantial POSIX API
functionality.

**Cygwin is not**:

- a way to run native Linux apps on Windows. You must rebuild your application
  *from source* if you want it to run on Windows.
- a way to magically make native Windows apps aware of UNIX® functionality like
  `signals`, `ptys` etc. Again, you need to build your apps *from source* if
  you want to take advantage of Cygwin functionality.

https://www.cygwin.com/

git[^cygwin-pkg]
---

Git is a [free and open source](https://git-scm.com/about/free-and-open-source)
distributed version control system designed to handle everything from small to
very large projects with speed and efficiency.

https://git-scm.com/

Docker
------

> The most-loved Tool in Stack Overflow’s 2022 Developer Survey.

Docker helps developers bring their ideas to life by conquering the complexity
of app development. We simplify and accelerate development workflows with
an integrated dev pipeline and through the consolidation of application
components. Actively used by millions of developers around the world,
Docker Desktop and Docker Hub provide unmatched simplicity, agility and choice.

https://www.docker.com/

PostgreSQL[^cygwin-pkg]
----------

PostgreSQL is a powerful, open source object-relational database system with
over 35 years of active development that has earned it a strong reputation for
reliability, feature robustness, and performance.

https://www.postgresql.org/

psql[^cygwin-pkg]
----

A terminal-based front-end to PostgreSQL. It enables you to type in queries
interactively, issue them to PostgreSQL, and see the query results.
Alternatively, input can be from a file or from command line arguments.
In addition, psql provides a number of meta-commands and various shell-like
features to facilitate writing scripts and automating a wide variety of tasks.

On Windows it will be installed within PostgreSQL RDBMS. For macOS and Linux
look for `postgresql-client` package.

https://www.postgresql.org/docs/current/app-psql.html

pgAdmin
-------

pgAdmin is the most popular and feature rich Open Source administration and
development platform for PostgreSQL, the most advanced Open Source database
in the world.

It is a PostgreSQL client (like a `psql`), but with web based GUI.

https://pgadmin.org/

SQLite[^cygwin-pkg]
------

SQLite is a C-language library that implements a
[small](https://sqlite.org/footprint.html),
[fast](https://sqlite.org/fasterthanfs.html),
[self-contained](https://sqlite.org/selfcontained.html),
[high-reliability](https://sqlite.org/hirely.html),
[full-featured](https://sqlite.org/fullsql.html), SQL database engine.

https://sqlite.org/


[^cygwin-pkg]: available for installation as a cygwin package

