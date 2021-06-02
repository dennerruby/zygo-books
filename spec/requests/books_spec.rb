require 'rails_helper'

RSpec.describe "Books", type: :request do
  describe "GET /books" do
    it "retorna status de sucesso" do
      get books_path
      expect(response).to have_http_status(200)
    end
  end
  describe "POST /books" do
    context "Quando tem parâmetros válidos" do
      it "cria o livro com os atributos corretos"do
        book_attributes = FactoryBot.attributes_for(:book)
        post books_path, params: { book: book_attributes}
        expect(Book.last).to have_attributes(book_attributes)
    end
  end
    context "Quando não tem parâmetros válidos" do
      it "não cria um novo livro"do
        expect{
          post books_path, params: {book:{title:'', description:'', featured_image:'', content:''}}
        }.to_not change(Book, :count)
      end
    end
  end 
end
