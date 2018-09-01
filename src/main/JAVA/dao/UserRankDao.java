package dao;

import org.apache.ibatis.annotations.*;
import pojo.UserRank;
import pojo.Users;

/**
 * Created with IntelliJ IDEA.
 * Description:
 * User: panyiwen
 * Date: 2018-08-17
 * Time: 下午11:56
 */

@Mapper
public interface UserRankDao {

    @Select("SELECT rankID, userID, source, rankName FROM user_rank WHERE userID = #{id}")
    public UserRank getUserRankByID(long id);

    @Insert("INSERT INTO user_rank(userID, source, rankName) VALUES (#{userId}, #{source}, #{rankName})")
    public boolean saveUserRank(UserRank userRank);

    @Update("update user_rank set source = source + #{source} where userId=#{userId}")
    public boolean addUserSource(@Param("source") int source, @Param("userId") long userId);

    @Update("update user_rank set rankName=#{name} where userID = #{userId}")
    public boolean updateRankName(@Param("name") String name, @Param("userId") long userId);
}
