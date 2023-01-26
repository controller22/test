package shop.mtcoding.jiiiii.model;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

@Mapper
public interface UserRepository {

        public int insert(@Param("username") String username,
                        @Param("password") String password,
                        @Param("email") String email);

        // public List<User> findAll();

        // public User findById(int id);

        // update user_tb
        // set username = #{username},
        // password = #{password},
        // email = #{email}
        // where id = #{id}
        public int updateById(@Param("id") int id, @Param("username") String username,
                        @Param("password") String password, @Param("email") String email);

        public int deleteById(int id);

        public User findByUsernameAndPassword(@Param("username") String username,
                        @Param("password") String password);
}
