module Web.View.Posts.Show where
import Web.View.Prelude

data ShowView = ShowView { post :: Include "comments" Post }

instance View ShowView ViewContext where
    html ShowView { .. } = [hsx|
        <nav>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href={PostsAction}>Posts</a></li>
                <li class="breadcrumb-item active">Show Post</li>
            </ol>
        </nav>
        <h1>{get #title post}</h1>
        <div>{get #content post}</div>
        <a href={NewCommentAction (get #id post)}>add comment</a>
        <div class="mt-2"> {forEach (get #comments post) renderComment}</div> 
    |]
        where
            renderComment comment = [hsx|
                <p>
                <small>{get #createdAt comment |> timeAgo}</small>
                <h5>{get #author comment}</h5>
                <p>{get #body comment}</p>
                </p>
            |]