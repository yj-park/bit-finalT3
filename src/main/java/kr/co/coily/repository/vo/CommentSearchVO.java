package kr.co.coily.repository.vo;

public class CommentSearchVO extends CommentPageVO{
	
	private String searchWord;
	private int cardNo;
	private int quizNo;
	
	public int getQuizNo() {
		return quizNo;
	}
	public void setQuizNo(int quizNo) {
		this.quizNo = quizNo;
	}
	public String getSearchWord() {
		return searchWord;
	}
	public void setSearchWord(String searchWord) {
		this.searchWord = searchWord;
	}
	public int getCardNo() {
		return cardNo;
	}
	public void setCardNo(int cardNo) {
		this.cardNo = cardNo;
	}

}
