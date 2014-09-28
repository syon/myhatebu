# coding: utf-8

get '/' do
  @hotentries = Hotentry.limit(100).order(created_at: :desc)
  slim :index
end
