
# ADR-002: Theme Resolution

## Status

Accepted

## Context

MovieDiscovery supports both Light and Dark themes and allows the user to
override the system appearance from the application's settings.

The project requires a scalable mechanism for exposing semantic colors to
the UI while maintaining a clear separation of responsibilities.

Several approaches were considered:

- Global color namespace
- Runtime branching inside `MovieColors`
- Theme resolution through application composition

## Decision

Theme selection is the responsibility of `ThemeResolver`.

`ThemeResolver` determines the active theme based on application state,
such as user preference or the current system appearance.

The UI never decides which theme is active.

The resolved theme exposes semantic colors through the `MovieColors`
contract.

Individual palette implementations (for example, Light and Dark) provide
the concrete color values while sharing the same semantic interface.

Theme-independent design tokens such as typography, spacing and corner
radius remain outside the theme.

## Consequences

### Benefits

- Separates theme selection from color definitions.
- Follows the Single Responsibility Principle.
- Keeps SwiftUI views independent of concrete theme implementations.
- Supports future themes without changing UI code.
- Avoids runtime branching inside color definitions.

### Trade-offs

- Introduces an additional abstraction (`ThemeResolver`).
- Requires maintaining separate palette implementations.

### Alternatives Considered

#### Global static color namespace

Rejected.

A global namespace hides theme selection and couples the UI to a single
source of colors.

#### Runtime branching inside `MovieColors`

Rejected.

`MovieColors` would become responsible for both defining semantic colors
and selecting the active theme, violating the Single Responsibility
Principle.

#### Theme containing all design tokens

Rejected.

Typography, spacing and corner radius are currently independent of the
active theme and therefore remain outside the theme object.
