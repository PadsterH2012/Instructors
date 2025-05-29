# Project Classification System
#
# Purpose: Automatically determine which validation rules apply based on project characteristics
# Usage: Referenced by validation system to apply appropriate conditional logic
# Integration: Used by all modules to determine validation scope and requirements

# ============================================================================
# PROJECT CLASSIFICATION FRAMEWORK
# ============================================================================

## Project Type Classification

### **Enterprise/Production Projects**
**Characteristics:**
- Multiple team members or external stakeholders
- Production deployment requirements
- Complex technology stack with multiple integrations
- Formal testing and quality assurance requirements
- Comprehensive documentation needs for support and maintenance

**Validation Scope:**
- Full validation suite (100% of applicable tests)
- Comprehensive documentation requirements
- Extensive testing requirements
- Complete DevOps and deployment validation
- Full security and performance validation

**Technology Detection:**
- Mentions of "production", "enterprise", "team", "stakeholders"
- Complex database requirements (multiple databases, clustering)
- CI/CD pipeline requirements
- Load balancing, scaling, monitoring requirements

### **Professional/Team Projects**
**Characteristics:**
- Small team or professional development
- Moderate complexity with standard technology stack
- Basic production deployment needs
- Standard testing and documentation requirements
- Professional development practices

**Validation Scope:**
- Core validation suite (80% of applicable tests)
- Standard documentation requirements
- Core testing requirements
- Basic DevOps validation
- Standard security validation

**Technology Detection:**
- Standard technology stack (single database, standard frameworks)
- Basic deployment requirements
- Team collaboration mentions
- Professional development practices

### **Personal/Learning Projects**
**Characteristics:**
- Individual developer or learning project
- Simple to moderate complexity
- Local or simple deployment
- Basic testing and documentation needs
- Focus on learning and experimentation

**Validation Scope:**
- Essential validation suite (60% of applicable tests)
- Basic documentation requirements
- Minimal testing requirements
- Simple deployment validation
- Basic security considerations

**Technology Detection:**
- Simple technology stack
- Local development focus
- Learning objectives mentioned
- Personal project indicators

### **Prototype/Research Projects**
**Characteristics:**
- Experimental or proof-of-concept work
- Rapid development and iteration
- Minimal production requirements
- Research and learning focused
- Flexible quality standards

**Validation Scope:**
- Minimal validation suite (40% of applicable tests)
- Research documentation focus
- Experimental testing approach
- No deployment validation required
- Learning-focused quality standards

**Technology Detection:**
- Prototype, POC, research, experiment mentions
- Rapid development requirements
- Research objectives
- Minimal production requirements

# ============================================================================
# TECHNOLOGY STACK DETECTION
# ============================================================================

## Development Environment Detection

### **Docker-Based Projects**
**Detection Criteria:**
- Docker, container, containerization mentioned in project plan
- Dockerfile, docker-compose references
- Container orchestration requirements
- Microservices architecture

**Applicable Rules:**
- Docker-native development enforcement
- Container testing requirements
- Container package management rules
- Container security validation

### **Local Development Projects**
**Detection Criteria:**
- Local development environment preferences
- Native application development
- Desktop application requirements
- Simple deployment needs

**Applicable Rules:**
- Virtual environment enforcement
- Local testing requirements
- System protection rules
- Local package management

### **Hybrid Development Projects**
**Detection Criteria:**
- Mixed development and deployment requirements
- Some components containerized, others local
- Complex deployment scenarios

**Applicable Rules:**
- Environment-specific rules for each component
- Clear boundary documentation requirements
- Mixed testing strategies

## Database Requirements Detection

### **Database-Driven Projects**
**Detection Criteria:**
- Database, SQL, NoSQL mentions
- Data storage, persistence requirements
- Multiple database types mentioned

**Applicable Rules:**
- Database LLD creation requirements
- Database security validation
- Data migration and backup requirements

### **File-Based Projects**
**Detection Criteria:**
- File storage, filesystem mentions
- Configuration file management
- No database requirements

**Applicable Rules:**
- File management pattern validation
- Configuration management requirements
- File security considerations

### **API-Only Projects**
**Detection Criteria:**
- API consumption only
- External service integration
- No local data storage

**Applicable Rules:**
- API integration validation
- External service documentation
- Service reliability considerations

## User Interface Detection

### **Frontend/UI Projects**
**Detection Criteria:**
- UI, frontend, web interface mentions
- User experience requirements
- Interactive application needs

**Applicable Rules:**
- UI/UX LLD creation requirements
- Frontend testing validation
- User documentation requirements

### **CLI/Headless Projects**
**Detection Criteria:**
- Command-line, CLI, headless mentions
- No user interface requirements
- Automation or service focus

**Applicable Rules:**
- CLI interface design validation
- Service documentation requirements
- Automation testing validation

### **API Service Projects**
**Detection Criteria:**
- API service, REST, GraphQL mentions
- Service-to-service communication
- No direct user interface

**Applicable Rules:**
- API documentation requirements
- Service testing validation
- Integration documentation

# ============================================================================
# VALIDATION SCOPE DETERMINATION
# ============================================================================

## Conditional Rule Application Logic

### **Universal Rules (All Projects)**
- Global enforcement rules
- Basic file creation and management
- Core package management principles
- Basic documentation requirements (setup, development, maintenance)
- Fundamental quality standards

### **Technology-Conditional Rules**
- **IF Docker detected**: Apply Docker-native development rules
- **IF Database detected**: Apply database design and security rules
- **IF Frontend detected**: Apply UI/UX design and testing rules
- **IF API service detected**: Apply API documentation and testing rules

### **Project-Type-Conditional Rules**
- **IF Enterprise/Production**: Apply full validation suite
- **IF Professional/Team**: Apply core validation suite
- **IF Personal/Learning**: Apply essential validation suite
- **IF Prototype/Research**: Apply minimal validation suite

### **End-User-Conditional Rules**
- **IF end-users exist**: Apply user documentation requirements
- **IF public API**: Apply external API documentation requirements
- **IF complex UI**: Apply user interface guide requirements

# ============================================================================
# IMPLEMENTATION GUIDELINES
# ============================================================================

## Classification Process
1. **Analyze project_plan.txt**: Extract project characteristics and requirements
2. **Detect Technology Stack**: Identify mentioned technologies and approaches
3. **Determine Project Type**: Classify based on complexity and requirements
4. **Apply Conditional Logic**: Activate appropriate validation rules
5. **Document Classification**: Record classification decisions for reference

## Validation Integration
- Each validation file references this classification system
- Conditional tests applied based on classification results
- Universal tests always applied regardless of classification
- Classification documented in project context for consistency

## Flexibility Considerations
- Classification can be overridden if project characteristics change
- Hybrid classifications supported for complex projects
- Manual classification adjustment allowed with documentation
- Regular re-evaluation during project evolution
