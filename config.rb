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
  activate :minify_css
  activate :minify_javascript
end

configure :development do
  activate :livereload
end
