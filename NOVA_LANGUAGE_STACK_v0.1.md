# NOVA Language Stack v0.1

NOVA is a tool-language, not only a script.

## Layer Order
Human intent
-> NOVA language
-> NOVA parser/runtime
-> backend adapters
-> computer action

## Backend Adapters
- Bash: terminal/system commands
- C/C++: fast low-level engine later
- Rust: safe strong core later
- JavaScript/HTML: UI/app/web layer
- Python: optional helper/lab tool, not required

## Truth
1/0 is the machine signal layer.
Machine code is closest to CPU.
Assembly is human-readable machine code.
C/C++ is strong and close to hardware.
NOVA is the high-level Universal Dragon tool-language.

## Mission
Build NOVA language first.
Use existing languages as engines/adapters.
Later create faster NOVA runtime in C/Rust.

## Adapter Principle
NOVA can use many existing languages as backend workers.

- Bash for system command execution
- Python for quick helper logic and AI experiments
- C/C++ for fast low-level runtime later
- Rust for safe fast runtime later
- JavaScript for web/app behavior
- HTML/CSS for interface
- Machine code / 1-0 is the final hardware reality

NOVA sits above them as the intent-language.
NOVA decides which backend should do the job.
