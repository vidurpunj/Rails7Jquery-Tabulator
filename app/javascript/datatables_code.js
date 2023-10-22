import DataTable from "datatables.net-bs5";


try {
    $(document).ready(function () {
        let table = new DataTable('#example');
        // new DataTable('#example');
    });
} catch (err) {
    console.log(err.message);
}