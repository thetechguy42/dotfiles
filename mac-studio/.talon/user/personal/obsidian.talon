# context: active app must be Obsidian
app: obsidian
-

# --- Text Formatting ---
bold that: key(cmd-b)
italic that: key(cmd-i)
code that: key(cmd-e)
strike that:
    text = edit.selected_text()
    insert("~~{text}~~")
block quote:
    edit.line_start()
    "> "
divider: "---\n"

# --- Obsidian-Specific Syntax ---
wiki link:
    insert("[[")
    insert("]]")
    key(left left)
tag insert: "#"
task box: "- [ ] "
task done: "- [x] "
embed note:
    insert("![[")
    insert("]]")
    key(left left)
callout note:
    insert("> [!note]\n> ")
callout warning:
    insert("> [!warning]\n> ")
callout tip:
    insert("> [!tip]\n> ")
callout info:
    insert("> [!info]\n> ")

# --- Navigation & Search ---
command palette: key(cmd-p)
quick switch: key(cmd-o)
search vault: key(cmd-shift-f)
search file: key(cmd-f)
graph view: key(cmd-g)

# --- View Management ---
toggle mode: key(cmd-e)
reading mode: key(cmd-shift-e)
split vertical: key(cmd-\)
close pane: key(cmd-w)
toggle left: key(cmd-shift-l)
toggle right: key(cmd-shift-r)

# --- File Operations ---
new note: key(cmd-n)
daily note: key(cmd-d)
insert template: key(cmd-t)
rename file: key(cmd-r)

# --- Link & Reference ---
copy link: key(cmd-shift-c)
follow link: key(alt-enter)
back: key(cmd-alt-left)
forward: key(cmd-alt-right)

# --- Productivity ---
toggle task: key(cmd-enter)
fold toggle: key(cmd-])
fold all: key(cmd-shift-[)
unfold all: key(cmd-shift-])
