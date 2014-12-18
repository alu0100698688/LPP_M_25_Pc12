require "bundler/gem_tasks"

task :default => :spec

desc "Ejecutar las espectativas de la clase Naranjero"
task :spec do
  sh "rspec -I. spec/naranjero_spec.rb"
end

desc "Ejecutar con documentacion"
task :doc do
  sh "rspec -I. spec/naranjero_spec.rb --format documentation"
end

