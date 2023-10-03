require "rails_helper"

RSpec.describe "Post Management" do
  it "creates a post" do
    post "/posts", params: {
      post: {
        title: "What a great post",
        body: "Some very cool ost is here, just come and read it!"
      }
    }

    expect(response).to redirect_to(post_url(Post.last.id))
  end

  it "returns a post" do
    post_title = "Beautiful post"
    post_body = "Some knowledge"

    Post.create! title: post_title, body: post_body
    get "/posts/1", headers: {"Accept" => "application/json"}
    json = JSON.parse(response.body)

    expect(json["title"]).to eq post_title
    expect(json["body"]).to eq post_body
  end
end
