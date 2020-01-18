require 'rails_helper'

RSpec.describe Todo, type: :model do
  #pending "add some examples to (or delete) #{__FILE__}"
  describe "#title" do
    context "空の場合" do
      let(:todo){Todo.new(title:"")} #titleが空文字のTodoオブジェクトを生成

      it "エラーを返す" do
        todo.valid? #バリデーションを実行
        expect(todo.errors[:title]).to be_present #期待結果：エラーメッセージが存在する
      end
    end

    context "Nullの場合" do
      let(:todo){Todo.new(title:nil)} #titleがNullのTodoオブジェクトを生成

      it "エラーを返す" do
        todo.valid? #バリデーションを実行
        expect(todo.errors[:title]).to be_present #期待結果：エラーメッセージが存在する
      end
    end

    context "値が入っている場合" do
      let(:todo){Todo.new(title:"this is title")} #titleに値が入っているTodoオブジェクトを生成

      it "エラーを返さない" do
        todo.valid? #バリデーションを実行
        expect(todo.errors[:title]).to be_blank #期待結果：エラーメッセージが存在しない
      end
    end
  end
end
