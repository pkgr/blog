Rails.application.routes.draw do
  get 'post/123392474466/auto-removal-of-branches', to: redirect('posts/21-auto-removal-of-branches')
  get 'post/101342252191/one-liner-to-get-a-precompiled-ruby-on-your-own', to: redirect('posts/13-one-liner-to-get-a-precompiled-ruby-on-your-own-servers')
  get 'post/97298227241/discourse-101-packages-available-for-ubuntu', to: redirect('posts/9-discourse-1-0-1-packages-available-for-ubuntu-12-04-14-04-and-debian-7')
  get 'post/97212463171/automatically-package-your-golang-apps', to: redirect('posts/8-automatically-package-your-golang-apps')
  get 'post/92834938086/install-discourse-on-debian-7-ubuntu-1204-or', to: redirect('posts/7-install-discourse-on-debian-7-ubuntu-12-04-or-ubuntu-14-04-in-less-than-5-minutes')
  get 'post/91359494524/analytics-for-your-packages', to: redirect('posts/6-analytics-for-your-packages')
  get 'post/90058347406/announcing-rpm-support-for-your-ruby-and-nodejs', to: redirect('posts/5-announcing-rpm-support-for-your-ruby-and-nodejs-projects')
  get 'post/86980630576/gitlab-packages-now-available-for-debian-74', to: redirect('posts/4-gitlab-packages-now-available-for-debian-7-ubuntu-12-04-and-ubuntu-14-04')
  get 'post/81988994454/why-i-made-packagerio-digressions-on-software', to: redirect('posts/1-why-i-made-packager-io-digressions-on-software-packaging')
  root to: "posts#index"
  resources :posts, only: [:index, :show]
  get 'feed', to: "feed#index", defaults: {format: :xml}
end
