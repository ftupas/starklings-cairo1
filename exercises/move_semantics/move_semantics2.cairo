// move_semantics2.cairo
// Make me compile without changing line 16 or moving line 13!
// Execute `starklings hint move_semantics2` or use the `hint` watch subcommand for a hint.

use array::ArrayTrait;
use array::ArrayTCloneImpl;
use array::SpanTrait;
use debug::PrintTrait;
use clone::Clone;



// // 1. Cloning
// fn main() {
//     let arr0 = ArrayTrait::new();
//     let mut arr0_clone = arr0.span().snapshot.clone();
//     let mut arr1 = fill_array(arr0_clone);
//     arr1.span().snapshot.clone().print();

//     // Do not change the following line!
//     arr0.print();    

//     arr1.append(88);

//     arr1.print();
// }

// fn fill_array(mut arr: Array<felt252>) -> Array<felt252> {
//     arr.append(22);
//     arr.append(44);
//     arr.append(66);

//     arr
// }

// // 2. Mutable borrow
// fn main() {
//     let mut arr0 = ArrayTrait::new();

//     fill_array(ref arr0);

//     // Do not change the following line!
//     arr0.span().snapshot.clone().print();

//     arr0.append(88);

//     arr0.span().snapshot.clone().print();
// }

// fn fill_array(ref arr: Array<felt252>) {
//     arr.append(22);
//     arr.append(44);
//     arr.append(66);
// }

// 3. Immutable reference and to owned
fn main() {
    let arr0 = ArrayTrait::new();

    let mut arr1 = fill_array(@arr0);

    // Do not change the following line!
    arr0.print();

    arr1.print();
}

fn fill_array(arr: @Array<felt252>) -> Array<felt252> {
    let mut arr = arr.span().snapshot.clone();

    arr.append(22);
    arr.append(44);
    arr.append(66);

    arr
}
