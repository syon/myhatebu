# coding: utf-8

get '/' do
  @hotentries = Hotentry.limit(100).order(created_at: :desc)
  slim :index
end

get '/feed' do
  @hotentries = Hotentry.limit(20).order(created_at: :desc)
  @updated = @hotentries.first["created_at"].strftime("%FT%TZ")
  content_type :"application/atom+xml"
  slim :feed, :layout => false
end
