package shop.mtcoding.jiiiii.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import shop.mtcoding.jiiiii.model.Board;
import shop.mtcoding.jiiiii.model.BoardRepository;
import shop.mtcoding.jiiiii.model.User;
import shop.mtcoding.jiiiii.model.UserRepository;

@Controller
public class BoardController {

    @Autowired
    BoardRepository boardRepository;

    @Autowired
    UserRepository userRepository;

    @Autowired
    HttpSession session;

    @GetMapping("/list")
    public String list(Model model) {
        User user = (User) session.getAttribute("principal");
        if (user == null) {
            return "redirect:/notfound";
        }
        List<Board> boardList = boardRepository.findById(user.getId());
        if (boardList == null) {
            return "redirect:/notfound";
        } else {
            model.addAttribute("boardList", boardList);
            return "board/list";
        }
        // return "list/list";
    }
}