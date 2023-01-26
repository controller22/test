package shop.mtcoding.jiiiii.model;

import java.sql.Timestamp;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
// title, userId, created_at
public class Board {
    private int id;
    private String title;
    private String userId;
    private Timestamp created_at;
}
