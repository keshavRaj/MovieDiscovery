
# ADR-001: Application Composition

## Status

Accepted

## Context

MovieDiscovery is a production-quality SwiftUI application.

At the start of the project, we needed to decide where the application's
entry point and root UI composition should reside.

SwiftUI projects created by Xcode place `MovieDiscoveryApp` and
`ContentView` at the top level of the project. While suitable for small
applications, this structure does not clearly distinguish application
composition from feature implementation.

A scalable architecture requires a clear separation between application
composition and feature modules.

## Decision

Introduce an `App` layer responsible for application composition.

The `App` layer contains:

- `MovieDiscoveryApp`
- `RootView`

`MovieDiscoveryApp` is responsible for creating the application.

`RootView` is responsible for composing the root user interface and will
eventually host application-wide concerns such as:

- Navigation
- Theme injection
- Dependency composition
- Global overlays
- Feature entry points

Feature-specific views do not belong to the `App` layer.

## Consequences

### Benefits

- Clearly separates application composition from feature implementation.
- Establishes a dedicated composition root.
- Improves scalability as new features are introduced.
- Makes architectural responsibilities easier to understand.

### Trade-offs

- Introduces an additional architectural layer compared to the default
  Xcode template.
- Slightly increases the number of folders in very small projects.

### Alternatives Considered

#### Keep the default Xcode structure

Rejected.

The default structure is suitable for templates and small sample
applications but does not scale well as the project grows.

#### Organize by technical role

Example:

- Views
- ViewModels
- Models

Rejected.

The project follows responsibility-based organization rather than
technical-role-based organization.
