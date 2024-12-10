using JuMP
using GLPK

# Membuat model dengan solver GLPK
model = Model(GLPK.Optimizer)

# Mendefinisikan variabel keputusan
@variable(model, y1 >= 0)  # Jumlah produk A
@variable(model, y2 >= 0)  # Jumlah produk B

# Mendefinisikan fungsi tujuan
@objective(model, Max, 60 * y1 + 50 * y2)

# Menambahkan kendala
@constraint(model, 5 * y1 + 4 * y2 <= 300)  # Bahan baku
@constraint(model, 3 * y1 + 2 * y2 <= 150)  # Waktu kerja

# Menyelesaikan model
optimize!(model)

# Menampilkan hasil
println("Nilai optimal y1 (produk A): ", value(y1))
println("Nilai optimal y2 (produk B): ", value(y2))
println("Nilai fungsi tujuan (keuntungan maksimal): ", objective_value(model))
