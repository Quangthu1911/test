package BEAN;


import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellType;
import org.apache.poi.ss.usermodel.FormulaEvaluator;
import org.apache.poi.ss.usermodel.Row;
import BEAN.Question;
import DAO.ExamDAO;
import DAO.QuestionDAO;

public class ReadFileExcel {

	 public static List<Question> readfile(String filename) throws IOException {
	       // Ä�á»�c má»™t file XSL.
	       FileInputStream inputStream = new FileInputStream(new File("C:/demo/"+filename));
	  
	       // Ä�á»‘i tÆ°á»£ng workbook cho file XSL.
	       HSSFWorkbook workbook = new HSSFWorkbook(inputStream);
	 
	  
	       // Láº¥y ra sheet Ä‘áº§u tiÃªn tá»« workbook
	       HSSFSheet sheet = workbook.getSheetAt(0);
	 
	  
	       // Láº¥y ra Iterator cho táº¥t cáº£ cÃ¡c dÃ²ng cá»§a sheet hiá»‡n táº¡i.
	       Iterator<Row> rowIterator = sheet.iterator();

	       List<Question> lisQ=new ArrayList<>();
	       String idExam=String.valueOf(ExamDAO.checkIDExamMax());
	       int temp=QuestionDAO.checkIDQuestionMax()+1;
	       while (rowIterator.hasNext()) {
	           Row row = rowIterator.next();
	     
	           // Láº¥y Iterator cho táº¥t cáº£ cÃ¡c cell cá»§a dÃ²ng hiá»‡n táº¡i.
	           Iterator<Cell> cellIterator = row.cellIterator();
	           int i=-1;
	           temp++;
	           Question question=new Question();
	           question.setQuestionID(String.valueOf(temp));
	           question.setExamID(idExam);
	           while (cellIterator.hasNext()) {
	               Cell cell = cellIterator.next();
	               i++;
	               
	               // Ä�á»•i thÃ nh getCellType() náº¿u sá»­ dá»¥ng POI 4.x
	               CellType cellType = cell.getCellTypeEnum();
	 
	               switch (cellType) {
	               case NUMERIC:
	            	   if(i==8)
	            	   {
	            		   question.setType((int) cell.getNumericCellValue());
	            	   }
	                   break;
	               case STRING:
	            	   if(i==0)
	            	   {
	            		   question.setContentQuestion(cell.getStringCellValue());
	            	   }
	            	   else if(i==1)
	            	   {
	            		   question.setAnswerA(cell.getStringCellValue());
	            	   }
	            	   else if(i==2)
	            	   {
	            		   question.setAnswerB(cell.getStringCellValue());
	            	   }
	            	   else if(i==3)
	            	   {
	            		   question.setAnswerC(cell.getStringCellValue());
	            	   }
	            	   else if(i==4)
	            	   {
	            		   question.setAnswerD(cell.getStringCellValue());
	            	   }
	            	   else if(i==5)
	            	   {
	            		   question.setAnswerE(cell.getStringCellValue());
	            	   }
	            	   else if(i==6)
	            	   {
	            		   question.setAnswerF(cell.getStringCellValue());
	            	   }
	            	   else if(i==7)
	            	   {
	            		   question.setAnswerTrue(cell.getStringCellValue());
	            	   }
	                   break;
	               }
	 
	           }
	           lisQ.add(question);
	           
	       }
	       return lisQ;
	   }
}
