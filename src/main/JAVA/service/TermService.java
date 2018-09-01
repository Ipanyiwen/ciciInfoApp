package service;

import com.github.pagehelper.PageInfo;
import pojo.Terms;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-25
 * Time: 下午10:10
 */
public interface TermService {
    public Terms getTermsNameByID(long tid);

    public List<Terms> getTermsByType(int termType);

    public List<Terms> listTermsByUid(long uid);

    public List<Terms> listHotTags();
}
