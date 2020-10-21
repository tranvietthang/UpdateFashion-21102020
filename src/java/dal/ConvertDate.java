/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 *
 * @author ThangCoi
 */
public class ConvertDate {
     public static String FormatDate(String converValue) throws Exception {
        Date convertDate;
        convertDate = new SimpleDateFormat("MM-yyyy").parse(converValue);
        return new SimpleDateFormat("MMMM-yyyy").format(convertDate);
    }
}
