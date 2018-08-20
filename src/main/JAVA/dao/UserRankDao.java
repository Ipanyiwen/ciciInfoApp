package dao;

import org.apache.ibatis.annotations.Select;
import pojo.UserRank;
import pojo.Users;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-17
 * Time: 下午11:56
 */
public interface UserRankDao {
    @Select("select rankID, userID, source, rankName from user_rank where userID = #{id}")
    public UserRank getUserRankByID(long id);
}
