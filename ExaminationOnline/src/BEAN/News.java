package BEAN;

public class News {
	private String IDNews;
	private String TitleNews;
	private String ContentNews;
	public String getIDNews() {
		return IDNews;
	}
	public void setIDNews(String iDNews) {
		IDNews = iDNews;
	}
	public String getTitleNews() {
		return TitleNews;
	}
	public void setTitleNews(String titleNews) {
		TitleNews = titleNews;
	}
	public String getContentNews() {
		return ContentNews;
	}
	public void setContentNews(String contentNews) {
		ContentNews = contentNews;
	}
	public News() {
		
	}
	public News(String iDNews, String titleNews, String contentNews) {
		super();
		IDNews = iDNews;
		TitleNews = titleNews;
		ContentNews = contentNews;
	}
}
