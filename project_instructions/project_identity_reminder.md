# IMPLEMENTATION PHASE REMINDER

## 🚨 MANDATORY READING FOR MODULE 8 IMPLEMENTATION PHASES

**CRITICAL**: Every agent MUST read this file at the start of each Module 8 implementation phase to maintain project context and follow proper development practices.

## 📋 PROJECT IDENTITY CONTEXT

**ALWAYS READ FIRST**: Before starting any module work, read `../../project_working_files/project_context.md` to understand:
- **Project Name**: Extract the exact project name for directory creation
- **Project Type**: Understand what kind of application you're building
- **User Base**: Remember who will use this application
- **Timeline**: Understand project scope and complexity
- **Technology Preferences**: Follow user's technology choices

**PROJECT MEMORY REQUIREMENT**: Throughout ALL modules, maintain awareness of:
- What application you are building
- Who the target users are
- What the core functionality should be
- What technology stack was chosen and why

## 📂 GIT REPOSITORY LOCATION RULES

### 🚨 CRITICAL: GIT REPOSITORY MUST BE AT PROJECT ROOT LEVEL

**MANDATORY GIT STRUCTURE**:
```
ProjectA/                              # ✅ GIT REPOSITORY HERE
├── .git/                             # ✅ Git initialized at project root
├── .gitignore                        # ✅ Gitignore at same level as .git
├── archivebin/
├── [project_name]/                   # ✅ Project implementation (NOT git repo)
├── project_instructions/
└── project_working_files/
```

### ❌ ABSOLUTELY FORBIDDEN GIT LOCATIONS
- **NEVER initialize git inside [project_name]/ directory**
- **NEVER create .git inside the project implementation folder**
- **NEVER have git and .gitignore at different directory levels**

### ✅ CORRECT GIT INITIALIZATION PROCESS
1. **Navigate to project root** (same level as project_instructions/)
2. **Verify .gitignore exists** at current level
3. **Initialize git at current level**: `git init`
4. **Verify git can see .gitignore**: `git status` should show .gitignore working
5. **Add and commit from project root level**

### 🔍 GIT LOCATION VALIDATION CHECKLIST
Before any git operations, verify:
- [ ] Current directory contains: project_instructions/, project_working_files/, [project_name]/
- [ ] .gitignore file exists at current directory level
- [ ] .git directory will be created at same level as .gitignore
- [ ] Git status shows project_instructions/ is ignored (not listed in untracked files)

### 🚨 GIT LOCATION VIOLATION CONSEQUENCES
**If git is initialized in wrong location**:
- ❌ .gitignore will not work properly
- ❌ project_instructions/ may be committed to repository
- ❌ archivebin/ may be committed to repository
- ❌ Repository structure will be incorrect and unprofessional

**IMMEDIATE CORRECTION REQUIRED**:
1. Remove .git from wrong location
2. Navigate to correct project root level
3. Initialize git at correct location
4. Verify .gitignore is working
5. Re-commit from correct location

## 🐳 DOCKER-NATIVE DEVELOPMENT RULES

### ❌ ABSOLUTELY FORBIDDEN
- **NO system package installations** (npm install, pip install, apt install, etc.)
- **NO direct dependency installations** on the host machine
- **NO workarounds** when tests fail - fix the code properly
- **NO shortcuts** that bypass Docker containers
- **NO "just this once" exceptions** to Docker-native rules

### ✅ REQUIRED APPROACH
- **ALL dependencies** managed via requirements.txt, package.json, or equivalent
- **ALL development** occurs within Docker containers
- **ALL testing** performed within Docker containers
- **ALL services** configured via docker-compose.yml
- **ALL environments** isolated and reproducible

### 🔧 PROPER WORKFLOW
1. **Create Docker configuration** (Dockerfile, docker-compose.yml)
2. **Define dependencies** in appropriate files (requirements.txt, package.json)
3. **Build containers** with `docker-compose build`
4. **Run development** with `docker-compose up`
5. **Execute tests** within containers using `docker-compose exec`

### 🔄 DOCKER TROUBLESHOOTING AND RECOVERY

**When Docker containers keep failing or have persistent issues**:

**Step 1: Stop All Containers**
```bash
docker-compose down
```

**Step 2: Purge Docker System (Nuclear Option)**
```bash
# Remove all containers, networks, images, and build cache
docker system prune -a --volumes

# Alternative: More targeted cleanup
docker container prune -f
docker image prune -a -f
docker volume prune -f
docker network prune -f
```

**Step 3: Rebuild from Clean State**
```bash
# Rebuild containers without cache
docker-compose build --no-cache

# Start fresh containers
docker-compose up --build
```

**Step 4: Verify Clean Build**
```bash
# Check container status
docker-compose ps

# Check logs for any issues
docker-compose logs

# Test container functionality
docker-compose exec [service_name] [test_command]
```

### 🚨 WHEN TO USE DOCKER PURGE
**Use docker system purge when**:
- Containers fail to start repeatedly
- Build cache is corrupted
- Dependency conflicts persist across rebuilds
- "Image not found" or "Layer not found" errors
- Persistent networking issues between containers
- Volume mounting problems

**WARNING**: Docker purge will remove ALL Docker data on the system, including other projects. Use with caution on shared development machines.

## 📁 SCRIPT ORGANIZATION RULES

### 🧪 TESTING SCRIPTS LOCATION
**Path**: `../../project_working_files/scripts/`
**Purpose**: Development, testing, and validation scripts
**Examples**:
- `test_database.sh` - Database testing within Docker
- `validate_environment.sh` - Environment validation
- `run_all_tests.sh` - Master test runner
- `validate_implementation.sh` - LLD compliance validation

### 🚀 APPLICATION SCRIPTS LOCATION
**Path**: `../../[project_name]/scripts/`
**Purpose**: Application lifecycle and operational scripts
**Examples**:
- `start_services.sh` - Application startup
- `deploy.sh` - Deployment script
- `migrate_database.sh` - Database migrations
- `backup_data.sh` - Data backup operations

### 📝 SCRIPT CREATION RULES
- **Every script MUST have a documented purpose**
- **Every script MUST be in the correct location**
- **NO ad-hoc script generation** without clear rationale
- **NO scripts that bypass Docker containers**

## 🏗️ FOUNDATION LEVERAGE REQUIREMENTS

### 📚 EXISTING WORK TO LEVERAGE
**70% of work is already complete** - USE IT:
- **Module 1 Research**: Technology choices and compatibility analysis
- **Module 3 LLDs**: Detailed technical specifications for implementation
- **Module 6 Planning**: Comprehensive project roadmap and phases
- **Module 7 Tracking**: Task-level implementation structure

### 🔗 LLD INTEGRATION REQUIREMENTS
**ALWAYS reference LLD files** for implementation decisions:
- **Database LLD**: Schema, relationships, queries, performance
- **Coding LLD**: Architecture patterns, API design, security
- **DevOps LLD**: Container configuration, deployment, CI/CD
- **UI/UX LLD**: Component structure, user flows, responsive design
- **Testing LLD**: Test strategies, coverage, automation

### 📖 DOCUMENTATION GROWTH PRINCIPLE
- **ADD to existing documentation** - never replace
- **REFERENCE previous modules** and their outputs
- **MAINTAIN project identity** throughout all work
- **UPDATE existing files** with new implementation details

## 📁 CODE ORGANIZATION AND BEST PRACTICES

### 🏗️ PROJECT STRUCTURE BEST PRACTICES
- **Use established boilerplates** for larger projects to ensure professional structure
- **Follow framework conventions** (e.g., Next.js app directory, Django project structure)
- **Separate concerns** with clear directory hierarchies (components/, utils/, services/, etc.)
- **Use consistent naming conventions** throughout the project

### 📄 FILE SIZE AND MAINTAINABILITY RULES
- **NEVER create huge files** that are difficult for agents to process
- **Maximum file size**: 300-500 lines for most files
- **Break down large components** into smaller, focused components
- **Use modular architecture** with single responsibility principle

### 🎨 CSS AND STYLING ORGANIZATION
- **Component-specific CSS files** - each component should have its own CSS file
- **Use CSS modules** or styled-components for component isolation
- **Avoid monolithic CSS files** that become unmaintainable
- **Follow BEM methodology** or similar naming conventions for CSS classes
- **Example structure**:
  ```
  components/
  ├── Header/
  │   ├── Header.jsx
  │   ├── Header.module.css
  │   └── index.js
  ├── Button/
  │   ├── Button.jsx
  │   ├── Button.module.css
  │   └── index.js
  ```

### 🔍 RESEARCH AND BEST PRACTICES REQUIREMENTS
- **Always research current best practices** before implementing
- **Use Context7 tools** for framework-specific documentation and patterns
- **Use brave_web_search** for:
  - Current year best practices (use system_info.env date context)
  - Industry standards and conventions
  - Performance optimization techniques
  - Security best practices
- **Document research findings** in working_files/research/ for future reference

### 🧩 COMPONENT AND MODULE DESIGN
- **Single Responsibility Principle**: Each component/module should have one clear purpose
- **Reusable Components**: Design components to be reusable across the application
- **Props Interface**: Clearly define component props with proper TypeScript types (if applicable)
- **Error Boundaries**: Implement proper error handling for React components
- **Performance Considerations**: Use React.memo, useMemo, useCallback appropriately

### 📦 DEPENDENCY MANAGEMENT BEST PRACTICES
- **Minimal Dependencies**: Only add dependencies that are truly necessary
- **Security Auditing**: Regularly check for security vulnerabilities
- **Version Pinning**: Use specific versions in package.json/requirements.txt
- **Tree Shaking**: Ensure unused code is eliminated in production builds

## 🎯 QUALITY STANDARDS

### 🚫 NO WORKAROUNDS POLICY
- **If tests fail**: Fix the underlying code issue
- **If containers don't start**: Fix the configuration (try Docker purge if persistent)
- **If containers keep failing**: Use Docker system purge and rebuild from clean state
- **If dependencies conflict**: Resolve properly, don't bypass
- **If implementation is complex**: Break it down, don't shortcut
- **If Docker cache is corrupted**: Purge system and rebuild without cache

### ✅ PROPER PROBLEM SOLVING AND RESEARCH
- **Research current best practices** using system_info.env date context
- **Reference existing LLD specifications** for guidance
- **Use Context7 tools** for library-specific documentation and patterns
- **Use brave_web_search** for general best practices and current trends
- **Add findings to research files** for future reference

### 🔍 WHEN TO USE RESEARCH TOOLS
**Use Context7 tools when**:
- Looking for specific library/framework documentation
- Understanding API usage patterns
- Finding component implementation examples
- Checking latest library features and best practices

**Use brave_web_search when**:
- Researching general best practices (include current year from system_info.env)
- Finding industry standards and conventions
- Looking for performance optimization techniques
- Researching security best practices
- Finding boilerplate templates and project structures
- Understanding current trends in web development

**Research Examples**:
- "React component best practices 2024"
- "Next.js project structure boilerplate 2024"
- "CSS modules vs styled-components 2024"
- "Docker Node.js production best practices 2024"

### 📊 TRACEABILITY REQUIREMENTS
- **Requirements → LLD → Implementation**: Maintain complete traceability
- **Document all decisions** and their rationale
- **Reference LLD sections** being implemented
- **Update STATUS_README.md** with accurate progress

## 🔄 IMPLEMENTATION PHASE REMINDERS

### 📋 BEFORE STARTING ANY IMPLEMENTATION PHASE
1. **Read this file completely**
2. **Read project_context.md** to refresh project identity
3. **Review relevant LLD files** for technical specifications
4. **Check STATUS_README.md** for current progress
5. **Understand what you're building** and for whom

### 🔍 DURING IMPLEMENTATION PHASE EXECUTION
- **Maintain project awareness** throughout all tasks
- **Follow Docker-native principles** for all development
- **Use proper script organization** for all scripts created
- **Reference existing work** before creating new content
- **Research best practices** before implementing new features
- **Use boilerplates** for larger project structures
- **Create component-specific CSS files** - avoid monolithic stylesheets
- **Keep files manageable** (300-500 lines max) for agent processing
- **Use Context7 and brave_web_search** when guidance is needed
- **Troubleshoot Docker issues properly**:
  - If containers fail repeatedly, use `docker system prune -a --volumes`
  - Rebuild with `docker-compose build --no-cache`
  - Never bypass Docker with system installations
- **Document decisions** and maintain traceability

### ✅ BEFORE COMPLETING ANY IMPLEMENTATION PHASE
- **Validate against project identity** and requirements
- **Ensure Docker-native compliance** with no system dependencies
- **Verify script organization** follows proper structure
- **Validate git repository location**:
  - Git repository (.git/) is at project root level (same as project_instructions/)
  - .gitignore file is at same level as .git directory
  - Git status shows project_instructions/ and archivebin/ are ignored
  - No .git directory exists inside [project_name]/ folder
- **Validate Docker environment**:
  - All containers start successfully with `docker-compose up`
  - No system package installations were performed
  - All dependencies managed through Docker containers
  - If containers failed, Docker purge and rebuild was used (not system workarounds)
- **Check file organization**:
  - No files exceed 500 lines
  - Components have individual CSS files
  - Proper directory structure with clear separation of concerns
  - Boilerplate structure followed for larger projects
- **Validate research integration**:
  - Best practices research conducted and documented
  - Context7/brave_web_search findings applied appropriately
  - Current year practices implemented (check system_info.env)
- **Update documentation** with implementation details
- **Confirm LLD traceability** for all implementation decisions

## 🚨 VIOLATION CONSEQUENCES

**If these guidelines are violated**:
- **STOP immediately** and correct the violation
- **Remove any system installations** performed
- **Recreate work using proper Docker-native approach**
- **Document the correction** and lessons learned

**Remember**: These guidelines exist to ensure professional, maintainable, and reproducible development practices. Following them results in higher quality outcomes and prevents technical debt.

## 📞 EMERGENCY GUIDANCE

**If you're unsure about any decision**:
1. **Re-read this file** and project_context.md
2. **Check relevant LLD files** for technical guidance
3. **Review Module 1 research** for technology decisions
4. **Ask for clarification** rather than making assumptions
5. **Document your reasoning** for any decisions made

**Remember**: You are building a specific application for specific users with specific requirements. Never lose sight of this context.
