Regulate.setup do |config|
  # Role that allows a user to edit pages, default is :editor
  # config.editor_role = :editor
  
  # Role that allows a user to manage pages and define what parts are editable, default is :admin
  # config.admin_role = :admin
end

# Make sure we have a git repo all setup based on our environment
GIT_CONFIG = YAML.load_file(File.join(Rails.root, "config", "regulate.yml"))[Rails.env]
repo_path = File.join(Rails.root, GIT_CONFIG['repo'])
if !File.directory?(repo_path)
  FileUtils.mkdir_p(repo_path)
  `git init #{repo_path}`
end