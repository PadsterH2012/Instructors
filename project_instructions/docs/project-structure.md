# 📁 Project Structure

## Complete Folder Structure

```
project_root/                      # 🎯 PROJECT ROOT - Where you run git init
├── .gitignore                     # 🚫 GIT EXCLUSIONS - Created by Module 0 at root level
├── simulate/                      # 🎭 SIMULATE MODE - Instruction system infrastructure (excluded from git)
│   └── simulate_log.md           # Simulate mode execution logs
├── project_instructions/          # 🔒 PROTECTED - Never modified during execution
│   ├── instruction_modules/       # Core instruction modules (9 modules)
│   ├── project_input/            # Protected input files
│   │   └── project_plan.txt      # Project requirements and specifications
│   ├── project_instruction_index.md # Main instruction entry point
│   ├── scripts/                  # System upgrade and update scripts
│   ├── templates/                # Documentation and tracking templates
│   │   ├── current_issues_template.md      # Issue tracking template
│   │   ├── current_workarounds_template.md # Workaround tracking template
│   │   └── simulate_log_template.md        # Simulate mode log template
│   ├── docs/                     # 📚 DOCUMENTATION - Modular documentation
│   │   ├── getting-started.md    # Quick start guide
│   │   ├── system-overview.md    # Architecture and workflow
│   │   ├── module-reference.md   # Detailed module documentation
│   │   ├── project-structure.md  # This file - folder organization
│   │   ├── issue-tracking.md     # Issue tracking system
│   │   ├── simulate-mode.md      # Simulation system
│   │   ├── debug-options.md      # Debug and troubleshooting
│   │   └── troubleshooting.md    # Common issues and solutions
│   └── README.md                 # Main user guide with navigation
├── project_working_files/        # 🗑️ SAFE TO DELETE - All agent-generated content
│   ├── status.md                 # Status tracking and resume capability
│   ├── debug_log.md             # Debug logs (if --debug enabled)
│   ├── issues/                   # 🚨 ISSUE TRACKING - Active issue management
│   │   ├── current_issues.md     # Active issues requiring resolution
│   │   └── current_workarounds.md # Temporary workarounds requiring proper fixes
│   ├── working_files/            # Internal working files
│   │   ├── research/             # Module 1 research outputs
│   │   ├── design/               # Module 3 LLD working files
│   │   └── tasks/                # Task breakdown files
│   └── docs/                     # Final documentation outputs
│       └── documentation/        # Self-referencing documentation system
└── archivebin/                   # 📦 ARCHIVE - Backup and archived files (same level as project_working_files)
    └── status.md                 # Archived status (after Module 6)
```

## Directory Purposes

### 🔒 Protected Areas (Never Modified)

**`project_instructions/`**
- Contains all instruction modules and system files
- Remains completely untouched during agent execution
- Portable and can be moved to any location
- Contains the core instruction system

**`project_input/`**
- Protected input files like project_plan.txt
- Isolated within project_instructions for safety
- Contains project requirements and specifications

### 🗑️ Safe Working Areas (Can Be Deleted)

**`project_working_files/`**
- All agent-generated content
- Can be safely deleted without affecting instructions
- Contains status tracking, debug logs, and work outputs
- Completely isolated from instruction system

**`archivebin/`**
- Backup and archived files
- Created at same level as project_working_files
- Used for file lifecycle management
- Excluded from git repository

### 🎭 Infrastructure Areas

**`simulate/`**
- Simulate mode logs and infrastructure
- Part of instruction system infrastructure
- Excluded from project repository via .gitignore
- Contains simulation execution logs

## File Organization Rules

### Instruction Isolation
- **project_instructions/** folder remains completely untouched during agent execution
- All instruction modules, templates, and system files are protected
- Agents work only with relative paths from instruction modules

### Working Files Isolation
- All agent-created files go to **../../project_working_files/** (relative to instruction modules)
- Complete isolation between instruction system and generated content
- Working files can be safely deleted without affecting instructions

### Safety Design
- **project_working_files/** can be safely deleted without affecting instructions
- Clear separation between instruction system and generated content
- Input protection with project_plan.txt in protected project_input/ folder

## Git Integration

### .gitignore Configuration

The system automatically creates a comprehensive .gitignore file:

```gitignore
# Project Instruction System (never commit)
project_instructions/

# Simulate mode logs (instruction system infrastructure)
simulate/

# Archive and temporary files
archivebin/
*.tmp
*.bak
*.backup

# OS generated files
.DS_Store
.DS_Store?
._*
.Spotlight-V100
.Trashes
ehthumbs.db
Thumbs.db

# IDE files
.vscode/
.idea/
*.swp
*.swo
*~

# Logs
*.log
npm-debug.log*
yarn-debug.log*
yarn-error.log*

# Runtime data
pids
*.pid
*.seed
*.pid.lock

# Coverage directory used by tools like istanbul
coverage/

# nyc test coverage
.nyc_output

# Dependency directories
node_modules/
jspm_packages/

# Optional npm cache directory
.npm

# Optional REPL history
.node_repl_history

# Output of 'npm pack'
*.tgz

# Yarn Integrity file
.yarn-integrity

# dotenv environment variables file
.env

# next.js build output
.next

# Python
__pycache__/
*.py[cod]
*$py.class
*.so
.Python
build/
develop-eggs/
dist/
downloads/
eggs/
.eggs/
lib/
lib64/
parts/
sdist/
var/
wheels/
*.egg-info/
.installed.cfg
*.egg
MANIFEST

# Virtual environments
venv/
ENV/
env/
.venv/

# Docker
.dockerignore
```

### Repository Structure

**What Gets Committed**:
- Project implementation code (from Module 8)
- Project documentation (moved from working files)
- Application-specific files and configurations

**What Gets Excluded**:
- Instruction system (project_instructions/)
- Working files (project_working_files/)
- Simulate logs (simulate/)
- Archive files (archivebin/)
- Temporary and system files

## Status Tracking and Task Management

**Status File Location**: `../../project_working_files/status.md` (relative to instruction modules)

**IMPORTANT**: This file is created by Module 0 (Initial Setup) and must exist before any other modules can be executed.

**UNIFIED TRACKING SYSTEM**:
- Replaces both project_instruction_status.md and temp_tasks.md to eliminate duplication
- Provides module-level status tracking for resume capability
- Integrates with task breakdown system for large task management
- Enables agents to resume work from any interruption point
- Located in isolated project_working_files/ for safety

**Status File Contents**:
- Current status of each module (resume capability)
- Active and completed task breakdowns
- Status update history and progress tracking
- Resume instructions for agents

## Core Functionality Files

**Task Breakdown System**: `instruction_modules/module_task_breakdown.md`
- Breaks large tasks into 5-15 minute micro-tasks
- Creates hidden task files for detailed progress tracking
- Prevents agents from struggling with overwhelming tasks

**Enhanced Micro-Task Framework V2**: `../../project_working_files/working_files/tasks/micro_task_framework_v2.md`
- **CRITICAL**: Resolves "tool input too large" errors
- Strict input size management (max 300 lines save-file, max 200 lines str-replace-editor)
- LLD processing limits (use view_range, never process entire files)
- Reference-based approach instead of content copying
- **MANDATORY**: All agents must follow this framework to prevent size errors

**Resume System**: `instruction_modules/module_resume_system.md`
- Enables agents to resume work from interruption points
- Validates completed modules before proceeding
- Provides status-based execution logic
- Enhanced with plan-based resume capability (priority over status.md when high_level_plan.md exists)

## Visual Documentation

**Workflow Diagrams**: `WORKFLOW_DIAGRAM.md`
- Comprehensive Mermaid diagrams showing complete system workflow
- Date context flow and research integration
- Resume system logic and decision trees
- Progress tracking hierarchy (module → phase → task levels)
- Implementation tracking visualization
- Safety and isolation architecture
