import {FontAwesomeIcon} from "@fortawesome/react-fontawesome";
import {faEye, faTrash} from "@fortawesome/free-solid-svg-icons";
import {useEffect, useState} from "react";
import async from "async";
import {getRequest} from "../../api/api";
import {NavLink} from "react-router-dom";
import {Container} from "react-bootstrap";

export default function InstructorCourses(){
    const [courses, setCourses] = useState([]);
    // fetch all courses
    useEffect(() => {
        async function fetchAllAvailableCourses(){
            // make api call to fetch all courses
            try {
                const c = await getRequest('/courses');
                setCourses(c.data.data);
            }catch (e) {
                // show alert for error
                // alert("An error occurred while fetching courses");
            }
        }

        fetchAllAvailableCourses();
    }, []);
    const iconStyle = {
        width: '20px',
        height: '20px',
        marginRight: '10px',
        marginLeft: '10px'
    }

    return (
        <Container>
            <h2>Available Courses</h2>
            <NavLink to={'/instructor/courses/add-course'} className="custom-button">
                Add Course
            </NavLink>
            <table className="performance-table">
                <thead>
                <tr>
                    <th>Course</th>
                    <th>Instructor</th>
                    <th>Action</th>
                </tr>
                </thead>
                <tbody>
                {
                    courses.map((course) => {
                        return (
                            <tr key={course.id}>
                                <td>{course.name}</td>
                                <td>{course.instructor_name !== "" ? course.instructor_name : "N/A"}</td>
                                <td className="action-column">
                                    <NavLink to={`/instructor/courses/details/${course.id}`}>
                                        <FontAwesomeIcon icon={faEye} style={iconStyle}/>
                                    </NavLink>
                                    {/*<a href={"#"} className="delete-button">*/}
                                    {/*    <FontAwesomeIcon icon={faTrash} style={iconStyle} color={'red'}/>*/}
                                    {/*</a>*/}
                                </td>
                            </tr>
                        )
                    })
                }
                </tbody>
            </table>
        </Container>
    )
}