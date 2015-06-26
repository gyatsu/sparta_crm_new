class CommentsController < ApplicationController

  def create
      # 1.customer ID 取得
    customer_id = comment_params["customer_id"].to_i

    # 2.user ID 取得
    user_id = current_user.id

    # 3.body 取得（コメント本文）
    body = comment_params["body"]

    # 4.各データを持ったCommentのインスタンス作成
    @comment = Comment.new(user_id: user_id, customer_id: customer_id, body: body)
    @comment.save
    redirect_to customer_url(customer_id)

  end


  def destroy
    @comment = Comment.find(params[:id])
    # @commentがdestroyされる前に、commentが誰のものかを変数に保存する
    customer_id = @comment.customer_id
    @comment.destroy
    # さっき保存したcustomer_idをここで使う
    redirect_to customer_url(customer_id)
  end

private

  def comment_params
    params.require(:comment).permit(
      :body,
      :customer_id,
      :user_id)
  end
end
