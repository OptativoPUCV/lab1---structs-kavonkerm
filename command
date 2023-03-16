compile = "make -s"
run = "bash ./test.sh"
hidden = ["main", "main-debug", "**/*.o", "**/*.d", ".ccls-cache", "Makefile"]

[nix]
channel = "stable-22_11"

[gitHubImport]
requiredFiles = [".replit", "replit.nix", ".ccls-cache"]

[debugger]
support = true

[debugger.compile]
command = ["make", "main-debug"]
noFileArgs = true

[debugger.interactive]
transport = "stdio"
startCommand = ["dap-cpp"]

[debugger.interactive.initializeMessage]
command = "initialize"
type = "request"

[debugger.interactive.initializeMessage.arguments]
adapterID = "cppdbg"
clientID = "replit"
clientName = "replit.com"
columnsStartAt1 = true
linesStartAt1 = true
locale = "en-us"
pathFormat = "path"
supportsInvalidatedEvent = true
supportsProgressReporting = true
supportsRunInTerminalRequest = true
supportsVariablePaging = true
supportsVariableType = true

[debugger.interactive.launchMessage]
command = "launch"
type = "request"

[debugger.interactive.launchMessage.arguments]
MIMode = "gdb"
arg = []
cwd = "."
environment = []
externalConsole = false
logging = {}
miDebuggerPath = "gdb"
name = "g++ - Build and debug active file"
program = "./main-debug"
request = "launch"
setupCommands = [
	{ description = "Enable pretty-printing for gdb", ignoreFailures = true, text = "-enable-pretty-printing" }
]
stopAtEntry = false
type = "cppdbg"

[languages]

[languages.c]
pattern = "**/*.{c,h}"

[languages.c.languageServer]
start = "ccls"