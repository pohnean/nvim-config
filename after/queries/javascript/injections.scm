; ;extends
;
; ; query
; ;; string sql injection
; ((string_fragment) @injection.content
;                    (#match? @injection.content "^(\r\n|\r|\n)*-{2,}( )*[sS][qQ][lL]")
;                    (#set! injection.language "sql"))
        

(
  (variable_declarator
    name: (identifier)
    (comment) @gql_comment
    value: (template_string) @graphql
  )
  (#match? @gql_comment "gql|graphql")
)

