::Sass.load_paths << File.join(root, "node_modules")

activate :autoprefixer do |prefix|
  prefix.browsers = "last 2 versions"
end

page '/*.xml', layout: false
page '/*.json', layout: false
page '/*.txt', layout: false

set :css_dir, 'assets/stylesheets'
set :fonts_dir, 'assets/fonts'
set :images_dir, 'assets/images'
set :js_dir, 'assets/javascripts'

configure :build do
  activate :asset_hash
  activate :minify_css
  activate :minify_javascript
  activate :gzip
  set :relative_links, true
  activate :relative_assets
end

configure :development do
  activate :livereload
end

activate :deploy do |deploy|
  deploy.deploy_method  = :git
  deploy.branch = 'gh-pages'
  deploy.build_before   = true
end
