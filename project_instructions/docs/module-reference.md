# 📖 Module Reference

## Overview

The Instructor System consists of 9 core modules that guide agents through complete project development from initial setup to production-ready implementation.

## Core Execution Modules (Sequential)

### Module 0: Initial Setup
**File**: `instruction_modules/module_initial_setup.md`

**Purpose**: Creates isolated project working structure and establishes foundational systems

**Key Features**:
- Creates isolated `project_working_files/` structure
- **Captures current system date context** for research accuracy
- **Interactive project context assessment** with progressive questions about longevity, users, infrastructure, and technology preferences
- Establishes status tracking system
- Sets up debug logging (if enabled)
- Creates issue tracking infrastructure

**Prerequisites**: None

**Outputs**: 
- Complete isolated working environment
- `system_info.env` with date context
- `project_context.md` with user responses
- Issue tracking files in `issues/`

---

### Module 1: Research Phase
**File**: `instruction_modules/module_research_phase.md`

**Purpose**: Comprehensive technology research using current date context

**Key Features**:
- **Uses current date context** from `system_info.env` for up-to-date research
- Technology stack research using `brave_web_search` with current year context
- Component compatibility research using `Context7` tools
- Industry standards research
- Research validation and cross-referencing

**Prerequisites**: Initial Setup completion

**Outputs**: Research files in `working_files/research/`
- Technology stack analysis
- Component compatibility reports
- Industry standards documentation
- Research validation summaries

---

### Module 2: Documentation Development
**File**: `instruction_modules/module_documentation_development.md`

**Purpose**: Creates project scope and high-level design documentation

**Key Features**:
- Project scope definition and documentation
- High-level design architecture
- Technology stack documentation
- Requirements analysis and specification

**Prerequisites**: Research Phase completion

**Outputs**: Core documentation in `docs/`
- `project_scope.md`
- `project_hld.md`
- `techstack.md`

---

### Module 3: LLD Structure and Creation
**File**: `instruction_modules/module_lld_structure_creation.md`

**Purpose**: Creates consolidated Low-Level Design files and self-referencing documentation

**Key Features**:
- Creates consolidated LLD files (500-750 lines each)
- Establishes self-referencing documentation system
- Parallel application documentation creation
- Component-level design specifications

**Prerequisites**: Documentation Development completion

**Outputs**: 
- LLD files in `working_files/design/`
- Application docs in `docs/documentation/`
- Self-referencing documentation system

---

### Module 4: Task and Gap Management
**File**: `instruction_modules/module_task_gap_management.md`

**Purpose**: Manages task breakdown, feature tracking, and mandatory gap resolution

**Key Features**:
- Documentation subtask management
- Iterative development loops
- Feature management and tracking
- **Mandatory gap resolution** before completion
- High-priority gaps must be resolved

**Prerequisites**: LLD Structure and Creation in progress

**Outputs**: Task management files in `working_files/tasks/`
- `temp_tasks.md`
- `feature_list.md`
- `missing_detail.md`
- `gap_resolution_research.md`
- **Resolved gaps documentation**

---

### Module 5: Validation and Planning
**File**: `instruction_modules/module_validation_planning.md`

**Purpose**: Final validation of all deliverables and project planning

**Key Features**:
- Validation and alignment processes
- Project execution planning
- Documentation maintenance and review
- Quality assurance and compliance checking

**Prerequisites**: Task and Gap Management completion

**Outputs**: Validation reports in `docs/`
- `project_plan.md`
- Validation reports and compliance documentation

---

### Module 6: High-Level Project Planning
**File**: `instruction_modules/module_high_level_planning.md`

**Purpose**: User-interactive project planning with MVP progression and comprehensive roadmap

**Key Features**:
- Integrates project context from Module 0 assessment
- MVP progression examples (5 development phases: Basic → Enhanced → Intermediate → Advanced → Production-ready)
- Comprehensive project roadmap creation with phases, tasks, and milestones
- User interaction for planning decisions
- Enhanced resume system with plan-based tracking

**Prerequisites**: Validation and Planning completion

**Outputs**: 
- Master project plan in `docs/high_level_plan.md`
- Enhanced resume system
- Comprehensive project roadmap

---

### Module 7: Implementation Tracking System
**File**: `instruction_modules/module_implementation_tracking.md`

**Purpose**: Creates structured implementation tracking with table-format progress visualization

**Key Features**:
- Creates structured implementation tracking based on high-level plan
- Breaks down high-level plan phases into manageable, trackable tasks (20-30 per phase)
- Implements table-format progress visualization with status icons and completion tracking
- Enhanced resume capabilities with task-level tracking
- STATUS_README.md dashboard creation

**Prerequisites**: High-Level Project Planning completion

**Outputs**: 
- Implementation plan structure in `implementation_plan/`
- `STATUS_README.md` dashboard
- Enhanced resume system with task-level tracking

---

### Module 8: Development Implementation
**File**: `instruction_modules/module_development_implementation.md`

**Purpose**: Transforms planning foundation into actual working code using Docker-native development

**Key Features**:
- Complete project implementation using LLD specifications
- Docker-native development approach with comprehensive testing
- Moves application documentation from working files to project directory
- Implements comprehensive testing with mandatory test execution at each phase
- Integrates active issue and workaround tracking throughout development
- Professional project structure with proper Git repository setup

**Prerequisites**: Implementation Tracking System completion

**Outputs**: 
- Complete project implementation in `../../[project_name]/`
- Moved documentation from working files to project
- Comprehensive testing scripts and validation
- Issue tracking integration
- Professional Git repository structure

## Core Functionality Modules (Support)

### Task Breakdown System
**File**: `instruction_modules/module_task_breakdown.md`

**Purpose**: Organizes complex tasks into manageable components

**Key Features**:
- Breaks large tasks into 5-15 minute micro-tasks
- Creates hidden task files for detailed progress tracking
- Focuses on quality completion rather than artificial time constraints
- Prevents agents from struggling with overwhelming tasks

### Resume System
**File**: `instruction_modules/module_resume_system.md`

**Purpose**: Enables agents to resume work from interruption points

**Key Features**:
- Enables agents to resume work from interruption points
- Validates completed modules before proceeding
- Provides status-based execution logic
- Enhanced with plan-based resume capability (priority over status.md when high_level_plan.md exists)

### Enhanced Micro-Task Framework V2
**File**: `../../project_working_files/working_files/tasks/micro_task_framework_v2.md`

**Purpose**: Resolves "tool input too large" errors and manages task complexity

**Key Features**:
- **CRITICAL**: Resolves "tool input too large" errors
- Strict input size management (max 300 lines save-file, max 200 lines str-replace-editor)
- LLD processing limits (use view_range, never process entire files)
- Reference-based approach instead of content copying
- **MANDATORY**: All agents must follow this framework to prevent size errors

## Module Dependencies

### Sequential Dependencies
- Module 0 (Initial Setup) must be completed before any other modules can begin
- All modules must reference and build upon outputs from previous modules
- Research findings from Module 1 must be integrated into all subsequent modules
- LLD documents from Module 3 must be validated in Module 5

### Cross-Module Integration
- Task management from Module 4 applies to all documentation activities
- Module 6 synthesizes all outputs from Modules 1-5 into a comprehensive project roadmap
- Module 7 creates implementation tracking based on Module 6's high-level plan
- Module 8 transforms the planning foundation into actual code implementation using LLD specifications

### Validation Requirements
- All project instructions must be validated against the project_plan.txt file before execution
- Status tracking from Module 0 must be maintained throughout all subsequent modules
- High-level plan from Module 6 becomes the primary progress tracking system when created
- Implementation tracking from Module 7 provides task-level progress monitoring for actual development

## Module Execution Guidelines

### Status Tracking
- Each module updates the unified status tracking system
- Status file location: `../../project_working_files/status.md`
- Enables resume capability from any interruption point
- Provides module-level and task-level progress tracking

### Quality Assurance
- Each module includes validation checkpoints
- Research-first approach required for all decisions
- No assumptions without explicit research validation
- Comprehensive documentation of all decisions and rationale

### Tool Usage Requirements
- `brave_web_search` for technology research with current date context
- `Context7` tools for component compatibility research
- File creation tools following size management guidelines
- Debug logging when enabled for transparency and troubleshooting

### Output Standards
- All outputs must be properly organized in designated directories
- File naming conventions must be followed consistently
- Documentation must be comprehensive and self-contained
- Cross-references between modules must be maintained

## Best Practices

### Module Execution
- Read entire module instructions before beginning
- Validate prerequisites before starting each module
- Follow the specified sequence and dependencies
- Update status tracking throughout execution

### Quality Management
- Use research-first approach for all decisions
- Validate outputs against requirements and specifications
- Maintain comprehensive documentation throughout
- Follow size management guidelines to prevent tool errors

### Problem Resolution
- Use debug mode for troubleshooting complex issues
- Log issues and workarounds in tracking system
- Resolve high-priority issues before proceeding
- Document lessons learned for future reference
