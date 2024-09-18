#!/usr/bin/env/python

from datetime import datetime
from pathlib import Path
import os
import sys
import pytz

defaultPath = '/mnt/destiny/workspace/journal/'
journalPath = os.environ.get('JJ_PATH') or defaultPath

# get the current journal entry name.
currentDate = datetime.now(pytz.timezone('America/Vancouver'))
filename = currentDate.strftime("%Y-%m-%d") + ".md"
pathname = journalPath + filename;
path = Path(pathname)

def createTimestampString():
    return currentDate.strftime("[%H:%M]")

def commandHelp():
    print("Commands:")
    print("  help")
    print("  jj")
    print("  jj <tag> - creates a new ## section.")

def createNewJournalEntry():
    print("Creating new journal entry! @"+filename)
    os.system("touch " + pathname)
    os.system("echo '# " + filename + "\n' >> " + pathname)
    os.system("echo '## " + createTimestampString() + "\n' >> " + pathname)

def addCustomEntry():
    os.system("echo '\n## " + createTimestampString() + " " + str(sys.argv[1]) + "\n' >> " + pathname)

hasArg1 = len(sys.argv) > 1;

# Attempt to print the help command
if hasArg1:
    if(str(sys.argv[1]) == 'help'):
        commandHelp()
        exit()

print('journal location: ' + pathname)

# Create the title.
if not path.exists():
    createNewJournalEntry()

if hasArg1:
    addCustomEntry()

# Open the editor.
os.system("vim " + journalPath + filename + ' +99999999999')

print(filename)