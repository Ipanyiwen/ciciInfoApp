package service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import dao.TermsDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;
import pojo.Terms;
import service.TermService;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-25
 * Time: 下午10:11
 */
@Service
public class TermServiceImpl implements TermService {

    @Autowired
    private TermsDao termsDao;

    @Override
    public Terms getTermsNameByID(long tid) {
        return termsDao.getTermsNameByID(tid);
    }

    @Override
    public List<Terms> getTermsByType(int termType) {
        return termsDao.getTermsByType(termType);
    }

    @Override
    public List<Terms> listTermsByUid(long uid) {
        return termsDao.listTermsByUid(uid);
    }

    @Override
    @Cacheable("listHotTags")
    public List<Terms> listHotTags() {

        return termsDao.listTermsByUid(-1);
    }


}
