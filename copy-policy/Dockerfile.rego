package policy

decision := {
  "action": "DENY",
  "message": sprintf("TYPE=%v", [type_name(input)]),
}

#package docker

#default allow := true

#deny_msg contains msg if {
#    input.instruction.cmd == "COPY"
#    input.instruction.args[_] == "."
#    msg := "Les copies du contexte complet sont interdites."
#}

#decision := {
#    "allow": count(deny_msg) == 0,
#    "deny_msg": deny_msg,
#}