output "archivo" {
  value       = module.file-module.out-filename
  # sensitive = true # cuando se exporta el recurso completo desde el otro lado 
}

output "archivo-dos" {
  value       = module.file-module-dos.out-filename
}