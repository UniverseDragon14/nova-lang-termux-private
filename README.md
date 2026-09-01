# NOVA Language — Termux/Pi Prototype

Python 3 interpreter and local continuity toolkit for a small NOVA scripting language on Termux and Raspberry Pi.

## Implemented CLI

~~~text
nova version
nova identity
nova status
nova note <message>
nova memory
nova history
nova backup
nova doctor
nova manifest
nova export
nova exports
nova import <latest|file.tar.gz>
nova syncguide
nova syncpack
nova synccheck
nova new <file.nova>
nova run <file.nova>
~~~

Run directly when the launcher is not installed:

~~~bash
python3 nova.py doctor
python3 nova.py run hello_core.nova
~~~

## Language features

- say and note;
- variables with set;
- bounded integer calculations;
- vars inspection;
- file inclusion with use;
- define/call functions with positional arguments;
- if/end blocks;
- repeat/end blocks limited to 0–100 iterations;
- memory/history and backup commands.

Examples include **hello_core.nova**, **mobile_test.nova**, and **qbit_test.qnova**.

## Local data and sync

The runtime maintains memory, history, backups, apps, libraries, and tools beneath its project root. Export/import extracts into a restore-preview directory and does not intentionally overwrite the active tree.

**syncpack** builds a Termux-to-Pi archive and generates a Pi installer. The generated installer writes into the user home and installs a launcher under **/usr/local/bin**, which requires sudo.

## Truth boundary

This is a Python language prototype and file/backup utility. QBIT-themed example syntax is not a physical quantum runtime. It is separate from QBIT NOVA Native C17.

## Security warnings

- Import only archives you created or independently trust. Older Python fallback extraction is not a sufficient defense against malicious tar paths.
- Review generated installers before running with sudo.
- Sync guides may contain local usernames or network addresses; keep this repository private or sanitize them before publication.
- Memory/history/export archives can contain personal project context.
- The use command should only load reviewed local files.

## Status

Development version reported by the CLI: **NOVA Core v1.3.4-dev**.
