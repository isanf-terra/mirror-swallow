//
// Copyright (c) Vatsal Manot
//

import Swallow
import SwiftSyntax

extension VariableDeclSyntax {
    public var variableName: String? {
        bindings.first?.pattern.trimmed.description
    }

    public var names: [TokenSyntax] {
        bindings.map {
            $0.pattern.as(IdentifierPatternSyntax.self)?.identifier ?? "_"
        }
    }
    
    public var explicitlyDeclaredTypes: [TypeSyntax] {
        bindings.map {
            $0.typeAnnotation?.type ?? "_"
        }
    }
}
