# NOVA Lang Termux

NOVA Lang Termux is a mobile-first NOVA language/runtime workspace for Termux, Universal Dragon notes, Pi 5 sync, small apps, modules, and tool-language experiments.

## What is in this repo

- `nova.py` — Python NOVA runtime/CLI core.
- `hello_core.nova`, `mobile_test.nova`, `qbit_test.qnova` — sample NOVA/QNOVA files.
- `NOVA_LANGUAGE_SPEC_v0.*.md` — language specification notes.
- `NOVA_LANGUAGE_STACK_v0.1.md` and `NOVA_Q_SPEC_v0.1.md` — stack/spec notes.
- `PI5_SYNC_GUIDE.md` — Termux-to-Pi5 sync instructions.
- `apps/`, `lib/`, `modules/`, `tools/`, `memory/`, `store/`, `docs/` — runtime support folders.

## Run

```bash
python3 nova.py version
python3 nova.py identity
python3 nova.py status
```

Create a new NOVA file:

```bash
python3 nova.py new main.nova
```

Run a NOVA file:

```bash
python3 nova.py run main.nova
```

## Current core described by the spec

- Memory.
- History.
- Safety guard.
- Backup.
- Modules.
- Course.
- Store seed.

## Pi 5 sync

See `PI5_SYNC_GUIDE.md` for the current Termux-to-Pi5 sync flow.
