# Conditional Validation Framework
#
# Purpose: Define how conditional logic is applied across the validation system
# Usage: Reference for implementing and maintaining conditional validation rules
# Integration: Used by all validation files to ensure consistent conditional logic application

# ============================================================================
# CONDITIONAL VALIDATION PRINCIPLES
# ============================================================================

## Core Principles

### **Universal First**
- All projects must pass universal validation rules
- Universal rules ensure basic quality and safety standards
- Universal rules are non-negotiable regardless of project type
- Universal rules form the foundation for all conditional rules

### **Context-Driven Application**
- Conditional rules applied based on project context and technology choices
- No assumptions about technology stack or project requirements
- Rules activate only when relevant technology or requirements are detected
- Context determined from project_plan.txt and project characteristics

### **Graceful Degradation**
- Complex projects get full validation suite
- Simple projects get essential validation only
- Validation scope matches project complexity and requirements
- No unnecessary overhead for simple projects

### **Consistent Quality**
- Quality standards maintained regardless of project type
- Safety and security rules always enforced when applicable
- Core development practices required across all project types
- Flexibility in implementation, consistency in quality

# ============================================================================
# CONDITIONAL LOGIC STRUCTURE
# ============================================================================

## Validation Rule Categories

### **Universal Rules (Apply to ALL projects)**
```
Format: Rule Name | Description | True/False
Example: Package Manager Usage | Dependencies Installed via Package Managers | True/False
```

**Characteristics:**
- No conditional prefix
- Apply regardless of technology or project type
- Focus on fundamental quality and safety
- Form baseline validation requirements

### **Technology-Conditional Rules**
```
Format: Technology Detection (IF technology used)
Example: ## Docker-Based Development (IF Docker containers are used)
```

**Characteristics:**
- Prefixed with technology detection condition
- Apply only when specific technology is detected or chosen
- Technology-specific best practices and requirements
- Can have multiple technology conditions per validation file

### **Project-Type-Conditional Rules**
```
Format: Project Classification (IF project type matches)
Example: ## Enterprise Requirements (IF Enterprise/Production project)
```

**Characteristics:**
- Prefixed with project type classification
- Apply based on project complexity and requirements
- Scale validation scope to project needs
- Ensure appropriate rigor for project type

### **Feature-Conditional Rules**
```
Format: Feature Detection (IF feature exists)
Example: ## End-User Documentation (IF end-users exist)
```

**Characteristics:**
- Prefixed with feature or requirement detection
- Apply only when specific features or requirements are present
- Avoid unnecessary validation for features not in scope
- Focus on relevant functionality validation

# ============================================================================
# IMPLEMENTATION PATTERNS
# ============================================================================

## Conditional Rule Implementation

### **Technology Detection Pattern**
```markdown
## Technology-Specific Section (IF [technology] is used)
- Rule 1 | Description | True/False
- Rule 2 | Description | True/False
- Rule 3 | Description | True/False
```

### **Project Type Pattern**
```markdown
## Project-Type-Specific Section (IF [project type])
- Rule 1 | Description | True/False
- Rule 2 | Description | True/False
```

### **Feature Detection Pattern**
```markdown
## Feature-Specific Section (IF [feature] exists)
- Rule 1 | Description | True/False
- Rule 2 | Description | True/False
```

## Validation File Structure

### **Standard Validation File Organization**
1. **File Header**: Purpose, scope, conditional logic note
2. **Universal Rules**: Rules that apply to all projects
3. **Conditional Sections**: Technology, project type, and feature-specific rules
4. **Validation Instructions**: How to apply conditional logic
5. **Test Distribution**: Universal vs conditional test counts

### **Conditional Logic Documentation**
- Each conditional section clearly marked with detection criteria
- Universal rules clearly separated from conditional rules
- Test distribution documented (universal + conditional counts)
- Expected results adjusted for conditional application

# ============================================================================
# DETECTION MECHANISMS
# ============================================================================

## Technology Detection

### **Docker Detection**
- Keywords: docker, container, containerization, dockerfile, docker-compose
- File presence: Dockerfile, docker-compose.yml
- Architecture: microservices, container orchestration

### **Database Detection**
- Keywords: database, SQL, NoSQL, PostgreSQL, MySQL, MongoDB, Redis
- Requirements: data storage, persistence, CRUD operations
- Architecture: data layer, database design

### **Frontend Detection**
- Keywords: UI, frontend, web interface, React, Vue, Angular
- Requirements: user interface, user experience, interactive
- Architecture: frontend, client-side, web application

### **API Detection**
- Keywords: API, REST, GraphQL, service, endpoint
- Requirements: API service, web service, microservice
- Architecture: service-oriented, API-first

## Project Type Detection

### **Enterprise/Production Indicators**
- Keywords: production, enterprise, team, stakeholders, deployment
- Requirements: scalability, monitoring, CI/CD, security
- Complexity: multiple databases, complex architecture

### **Personal/Learning Indicators**
- Keywords: personal, learning, tutorial, experiment, practice
- Requirements: simple deployment, basic features
- Complexity: single database, standard patterns

### **Prototype/Research Indicators**
- Keywords: prototype, POC, research, experiment, proof-of-concept
- Requirements: rapid development, minimal production needs
- Complexity: experimental, flexible requirements

# ============================================================================
# VALIDATION EXECUTION
# ============================================================================

## Conditional Validation Process

### **Step 1: Project Analysis**
1. Read project_plan.txt and project_context.md
2. Extract technology requirements and project characteristics
3. Identify project type and complexity level
4. Document classification decisions

### **Step 2: Rule Activation**
1. Apply all universal rules (mandatory)
2. Activate technology-specific rules based on detection
3. Activate project-type rules based on classification
4. Activate feature-specific rules based on requirements

### **Step 3: Validation Execution**
1. Execute universal validation tests
2. Execute applicable conditional validation tests
3. Skip non-applicable conditional tests
4. Document which rules were applied and why

### **Step 4: Results Reporting**
1. Report universal test results (must be 100%)
2. Report applicable conditional test results
3. Document which conditional rules were applied
4. Provide overall validation score based on applicable tests

## Quality Assurance

### **Validation Completeness**
- All applicable rules must be validated
- No applicable rules should be skipped
- Universal rules always validated regardless of project type
- Conditional rules validated only when applicable

### **Consistency Maintenance**
- Same conditional logic applied across all validation files
- Consistent detection criteria used throughout system
- Regular review of conditional logic for accuracy
- Documentation updated when conditional logic changes

# ============================================================================
# MAINTENANCE AND EVOLUTION
# ============================================================================

## Framework Maintenance

### **Regular Review**
- Periodic review of conditional logic accuracy
- Update detection criteria as technologies evolve
- Adjust project type classifications as needed
- Validate that conditional rules remain relevant

### **System Evolution**
- Add new conditional categories as needed
- Refine existing conditional logic based on experience
- Update detection mechanisms for new technologies
- Maintain backward compatibility with existing projects

### **Quality Monitoring**
- Track conditional rule application accuracy
- Monitor for false positives/negatives in detection
- Gather feedback on conditional logic effectiveness
- Adjust framework based on real-world usage

## Documentation Standards

### **Conditional Logic Documentation**
- Clear documentation of all conditional criteria
- Examples of when rules apply vs when they don't
- Rationale for conditional vs universal classification
- Regular updates to reflect system changes

### **Usage Guidelines**
- Clear instructions for applying conditional logic
- Examples of different project types and applicable rules
- Troubleshooting guide for conditional logic issues
- Best practices for maintaining conditional validation
