;extends

; query
;; string sql injection
((string_fragment) @injection.content
                   (#match? @injection.content "^(\r\n|\r|\n)*-{2,}( )*[sS][qQ][lL]")
                   (#set! injection.language "sql"))
        

(
  (lexical_declaration
    (variable_declarator
      value: (template_string) @graphql
    )
    .
    (comment) @gql_comment
  )
  (#match? @gql_comment "gql|graphql")
)
