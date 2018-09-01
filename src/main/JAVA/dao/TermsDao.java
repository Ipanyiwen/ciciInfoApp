package dao;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import pojo.Terms;
import pojo.UserRank;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-24
 * Time: 上午11:40
 */
public interface TermsDao {

    /**
     * 通过id查询类别
     * @param tid
     * @return
     */
    public Terms getTermsNameByID(@Param("tid") long tid);

    /**
     * 通过id查询类别
     * @param id
     * @return
     */
    public Terms getTermsByID(long id);

    /**
     * 查询是否存在
     * @param name
     * @param uid
     * @return
     */
    public Terms getTagByName(@Param("name") String name,@Param("uid") long uid);

    /**
     * 通过类型查询分类
     * @param termType
     * @return
     */
    public List<Terms> getTermsByType(Integer termType);

    /**
     * 修改文章数量
     * @param nums
     * @return
     */
    public boolean updatePostNums(@Param("nums") long nums, @Param("tid") long tid);

    /**
     * 添加类别or标签
     * @return
     */
    public boolean saveTerms(Terms terms);

    /**
     * 查询所有用户标签
     * @param uid
     * @return
     */
    public List<Terms> listTermsByUid(@Param("uid") long uid);

    /**
     * 类别中文章数目减一
     * @param pid
     * @return
     */
    public boolean updateTermsCount(@Param("pid") long pid);

    /**
     * 删除文章关系
     * @param pid
     * @return
     */
    public boolean deleteTermRealationByPid( @Param("pid") long pid);

    public Terms getTermByPid(@Param("pid") long pid);

    public List<Terms> listtagsByPid(@Param("pid") long pid);

}
